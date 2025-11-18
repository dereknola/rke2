package main

import (
	"flag"
	"fmt"
	"os"
	"testing"

	. "github.com/onsi/ginkgo/v2"
	. "github.com/onsi/gomega"
	"github.com/rancher/rke2/tests"
	"github.com/rancher/rke2/tests/docker"
)

var (
	serverCount = flag.Int("serverCount", 1, "number of server nodes")
	agentCount  = flag.Int("agentCount", 1, "number of agent nodes")
	ci          = flag.Bool("ci", false, "running on CI, force cleanup")

	tc *docker.TestConfig
)

// replaceConfigYaml replaces the rke2 config.yaml on the provided node
func replaceConfigYaml(config string, node docker.DockerNode) error {
	tempCnf, err := os.CreateTemp("", "config-*.yaml")
	if err != nil {
		return err
	}
	defer os.Remove(tempCnf.Name())

	err = os.WriteFile(tempCnf.Name(), []byte(config), 0644)
	if err != nil {
		return err
	}
	cmd := fmt.Sprintf("docker cp %s %s:/etc/rancher/rke2/config.yaml", tempCnf.Name(), node.Name)
	_, err = docker.RunCommand(cmd)
	return err
}

func Test_DockerTraefik(t *testing.T) {
	RegisterFailHandler(Fail)
	flag.Parse()
	RunSpecs(t, "Traefik Docker Test Suite")
}

var _ = Describe("Traefik Tests", Ordered, func() {

	Context("Setup Cluster", func() {
		It("should provision servers and agents", func() {
			var err error
			tc, err = docker.NewTestConfig()
			Expect(err).NotTo(HaveOccurred())
			tc.ServerYaml = "ingress-controller: ingress-nginx"
			Expect(tc.ProvisionServers(*serverCount)).To(Succeed())
			Expect(tc.ProvisionAgents(*agentCount)).To(Succeed())
			Expect(docker.RestartCluster(append(tc.Servers, tc.Agents...))).To(Succeed())
			Expect(tc.CopyAndModifyKubeconfig()).To(Succeed())
			Eventually(func(g Gomega) {
				g.Expect(tests.CheckDefaultDeployments(tc.KubeconfigFile)).To(Succeed())
				g.Expect(tests.CheckDaemonSets([]string{"rke2-canal", "rke2-ingress-nginx-controller"}, tc.KubeconfigFile)).To(Succeed())
			}, "240s", "5s").Should(Succeed())
			Eventually(func() error {
				return tests.NodesReady(tc.KubeconfigFile, tc.GetNodeNames())
			}, "40s", "5s").Should(Succeed())
		})
	})
	Context("Deploy sample ingress workload", func() {
		It("should deploy web server and ingress", func() {
			_, err := tc.DeployWorkload("ingress_with_ann.yaml")
			Expect(err).NotTo(HaveOccurred(), "failed to apply whoami ingress")
		})
		It("should return a 308 redirect when acceessing via node IP", func() {
			cmd := "curl -H 'Host: myapp.example.com' http://" + tc.Servers[0].IP

			Eventually(func() (string, error) {
				return tc.Servers[0].RunCmdOnNode(cmd)
			}, "60s", "5s").Should(ContainSubstring("308 Permanent Redirect"))
		})
		It("should be accessible via ClusterIP", func() {
			cmd := "kubectl get svc basic-webserver -o jsonpath='{.spec.clusterIP}' --kubeconfig=" + tc.KubeconfigFile
			clusterIP, err := docker.RunCommand(cmd)
			Expect(err).NotTo(HaveOccurred(), "failed to get clusterIP:"+clusterIP)

			cmd = "curl -H 'Host: myapp.example.com' http://" + clusterIP
			res, err := tc.Servers[0].RunCmdOnNode(cmd)
			Expect(err).NotTo(HaveOccurred(), "failed to curl clusterIP:"+res)
			Expect(res).To(ContainSubstring("Welcome to nginx!"))
		})

	})
	Context("Deploy traefik as a secondary ingress controller", func() {
		It("should assign nginx ingressClassName to all existing ingress resources", func() {
			cmd := `kubectl get ingress --all-namespaces -o custom-columns='NAMESPACE:.metadata.namespace,NAME:.metadata.name' --no-headers | while read NS NAME; do kubectl patch ingress "$NAME" -n "$NS" --type=merge -p '{"spec": {"ingressClassName": "nginx"}}'; done`
			_, err := tc.Servers[0].RunCmdOnNode(cmd)
			Expect(err).NotTo(HaveOccurred(), "failed to patch existing ingress resources")

			cmd = "kubectl get ingress --all-namespaces --no-headers -o custom-columns='NAMESPACE:.metadata.namespace,NAME:.metadata.name,ICLASS:.spec.ingressClassName' --kubeconfig=" + tc.KubeconfigFile
			res, err := docker.RunCommand(cmd)
			Expect(err).NotTo(HaveOccurred(), "failed to get ingress resources:"+res)
			Expect(res).To(ContainSubstring("default   myapp   nginx"))
		})
		It("restart rke2 with traefik ingress controller", func() {
			newServerYaml := "ingress-controller:\n  - ingress-nginx\n  - traefik"
			Expect(replaceConfigYaml(newServerYaml, tc.Servers[0])).To(Succeed())

			dualIngressManifest := `
apiVersion: helm.cattle.io/v1
kind: HelmChartConfig
metadata:
  name: rke2-traefik
  namespace: kube-system
spec:
  valuesContent: |-
    ports:
      web:
        hostPort: 8000
      websecure:
        hostPort: 8443
    providers:
      kubernetesIngressNGINX:
        enabled: true
        ingressClass: "rke2-ingress-nginx-migration"
        controllerClass: 'rke2.cattle.io/ingress-nginx-migration'
`
			Expect(docker.StageManifest(dualIngressManifest, tc.Servers[0])).To(Succeed())
			Expect(docker.RestartCluster(append(tc.Servers, tc.Agents...))).To(Succeed())
			Eventually(func(g Gomega) {
				g.Expect(tests.CheckDefaultDeployments(tc.KubeconfigFile)).To(Succeed())
				g.Expect(tests.CheckDaemonSets([]string{"rke2-canal", "rke2-ingress-nginx-controller", "rke2-traefik"}, tc.KubeconfigFile)).To(Succeed())
			}, "240s", "5s").Should(Succeed())
		})
		It("should have traefik avaliable as an ingressClass", func() {
			cmd := `kubectl get ingressclass -o 'custom-columns=NAME:.metadata.name,CONTROLLER:.spec.controller,DEFAULT:.metadata.annotations.ingressclass\.kubernetes\.io/is-default-class' --kubeconfig=` + tc.KubeconfigFile
			res, err := docker.RunCommand(cmd)
			Expect(err).NotTo(HaveOccurred(), "failed to get ingressclass:"+res)
			Expect(res).To(MatchRegexp(`nginx\s+k8s\.io\/ingress-nginx\s+<none>`), "ingress-nginx ingressclass not found or not marked default")
			Expect(res).To(MatchRegexp(`traefik\s+traefik\.io\/ingress-controller\s+false`), "traefik ingressclass not found")
		})
	})
	Context("Test sample ingress workload via Traefik ports", func() {
		It("should return a 308 redirect when acceessing via node IP", func() {
			cmd := "curl -H 'Host: myapp.example.com' http://" + tc.Servers[0].IP + ":8000"

			Eventually(func() (string, error) {
				return tc.Servers[0].RunCmdOnNode(cmd)
			}, "60s", "5s").Should(ContainSubstring("308 Permanent Redirect"))
		})
		It("should be accessible via ClusterIP", func() {
			cmd := "kubectl get svc basic-webserver -o jsonpath='{.spec.clusterIP}' --kubeconfig=" + tc.KubeconfigFile
			clusterIP, err := docker.RunCommand(cmd)
			Expect(err).NotTo(HaveOccurred(), "failed to get clusterIP:"+clusterIP)

			cmd = "curl -H 'Host: myapp.example.com' http://" + clusterIP + ":8000"
			res, err := tc.Servers[0].RunCmdOnNode(cmd)
			Expect(err).NotTo(HaveOccurred(), "failed to curl clusterIP:"+res)
			Expect(res).To(ContainSubstring("Welcome to nginx!"))
		})

	})
	Context("Switch to traefik as the default ingress controller", func() {
		It("restart rke2 with traefik as default ingress controller", func() {
			newServerYaml := "ingress-controller: traefik"
			Expect(replaceConfigYaml(newServerYaml, tc.Servers[0])).To(Succeed())
			By("Updating traefik helm chart with the ingress-nginx compatibility settings")
			traefikManifest := `
apiVersion: helm.cattle.io/v1
kind: HelmChartConfig
metadata:
  name: rke2-traefik
  namespace: kube-system
spec:
  valuesContent: |-
    providers:
      kubernetesIngressNGINX:
        enabled: true
        ingressClass: "rke2-ingress-nginx-migration"
        controllerClass: 'rke2.cattle.io/ingress-nginx-migration'
`
			Expect(docker.StageManifest(traefikManifest, tc.Servers[0])).To(Succeed())
			Expect(docker.RestartCluster(append(tc.Servers, tc.Agents...))).To(Succeed())
			Eventually(func(g Gomega) {
				g.Expect(tests.CheckDefaultDeployments(tc.KubeconfigFile)).To(Succeed())
				g.Expect(tests.CheckDaemonSets([]string{"rke2-canal", "rke2-traefik"}, tc.KubeconfigFile)).To(Succeed())
			}, "240s", "5s").Should(Succeed())
		})
		It("should have traefik is the only ingressClass and marked as default", func() {
			cmd := `kubectl get ingressclass -o 'custom-columns=NAME:.metadata.name,CONTROLLER:.spec.controller,DEFAULT:.metadata.annotations.ingressclass\.kubernetes\.io/is-default-class' --kubeconfig=` + tc.KubeconfigFile
			res, err := docker.RunCommand(cmd)
			Expect(err).NotTo(HaveOccurred(), "failed to get ingressclass:"+res)
			Expect(res).NotTo(MatchRegexp(`nginx\s+k8s\.io\/ingress-nginx`), "ingress-nginx ingressclass was still found")
			Expect(res).To(MatchRegexp(`traefik\s+traefik\.io\/ingress-controller\s+true`), "traefik ingressclass not found or not marked default")
		})
		// It("should handle existing ingress-nginx annotations on ingress resources", func() {
		// 	cmd := "curl -u 'user:password' --location-trusted -H 'Host: whoami.example.com' http://" + tc.Servers[0].IP
		// 	Eventually(func() error {
		// 		_, err := tc.Servers[0].RunCmdOnNode(cmd)
		// 		return err
		// 	}, "60s", "5s").Should(Succeed())
		// })
		It("should takeover existing ingress resources", func() {
			cmd := "curl -H 'Host: myapp.example.com' http://" + tc.Servers[0].IP + ":80"
			Eventually(func() error {
				_, err := tc.Servers[0].RunCmdOnNode(cmd)
				return err
			}, "60s", "5s").Should(Succeed())
		})
	})
	// Context("Cleanup existing ingress resources", func() {
	// 	It("should remove all existing nginx objects", func() {

})

var failed bool
var _ = AfterEach(func() {
	failed = failed || CurrentSpecReport().Failed()
})

var _ = AfterSuite(func() {
	// if tc != nil && failed {
	// 	AddReportEntry("pod-logs", tc.DumpPodLogs(20))
	// 	AddReportEntry("journald-logs", tc.DumpServiceLogs(20))
	// 	AddReportEntry("component-logs", tc.DumpComponentLogs(20))
	// }
	if *ci || (tc != nil && !failed) {
		// tc.Cleanup()
	}
})
