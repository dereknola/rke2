module github.com/rancher/rke2

go 1.24.4

replace (
	github.com/Microsoft/hcsshim => github.com/Microsoft/hcsshim v0.12.9
	github.com/Mirantis/cri-dockerd => github.com/k3s-io/cri-dockerd v0.3.17-k3s1
	github.com/cloudnativelabs/kube-router/v2 => github.com/k3s-io/kube-router/v2 v2.5.0
	github.com/containerd/containerd/v2 => github.com/k3s-io/containerd/v2 v2.0.5-k3s2
	github.com/distribution/reference => github.com/distribution/reference v0.5.0
	github.com/docker/distribution => github.com/docker/distribution v2.8.3+incompatible
	github.com/docker/docker => github.com/docker/docker v25.0.8+incompatible
	github.com/golang/protobuf => github.com/golang/protobuf v1.5.4
	github.com/google/cadvisor => github.com/k3s-io/cadvisor v0.52.1
	github.com/googleapis/gax-go/v2 => github.com/googleapis/gax-go/v2 v2.12.0
	github.com/open-policy-agent/opa => github.com/open-policy-agent/opa v0.68.0
	github.com/opencontainers/selinux => github.com/opencontainers/selinux v1.11.1
	github.com/prometheus/client_golang => github.com/prometheus/client_golang v1.22.0
	github.com/prometheus/common => github.com/prometheus/common v0.62.0
	github.com/spegel-org/spegel => github.com/k3s-io/spegel v0.2.0-k3s1
	go.etcd.io/etcd/api/v3 => github.com/k3s-io/etcd/api/v3 v3.5.21-k3s1
	go.etcd.io/etcd/client/pkg/v3 => github.com/k3s-io/etcd/client/pkg/v3 v3.5.21-k3s1
	go.etcd.io/etcd/client/v2 => github.com/k3s-io/etcd/client/v2 v2.305.21-k3s1
	go.etcd.io/etcd/client/v3 => github.com/k3s-io/etcd/client/v3 v3.5.21-k3s1
	go.etcd.io/etcd/etcdutl/v3 => github.com/k3s-io/etcd/etcdutl/v3 v3.5.21-k3s1
	go.etcd.io/etcd/pkg/v3 => github.com/k3s-io/etcd/pkg/v3 v3.5.21-k3s1
	go.etcd.io/etcd/raft/v3 => github.com/k3s-io/etcd/raft/v3 v3.5.21-k3s1
	go.etcd.io/etcd/server/v3 => github.com/k3s-io/etcd/server/v3 v3.5.21-k3s1
	go.opentelemetry.io/contrib/instrumentation/github.com/emicklei/go-restful/otelrestful => go.opentelemetry.io/contrib/instrumentation/github.com/emicklei/go-restful/otelrestful v0.44.0
	golang.org/x/crypto => golang.org/x/crypto v0.36.0
	golang.org/x/net => golang.org/x/net v0.38.0
	golang.org/x/sys => golang.org/x/sys v0.31.0
	google.golang.org/genproto => google.golang.org/genproto v0.0.0-20241209162323-e6fa225c2576
	google.golang.org/grpc => google.golang.org/grpc v1.68.1
	k8s.io/api => github.com/k3s-io/kubernetes/staging/src/k8s.io/api v1.33.2-k3s1
	k8s.io/apiextensions-apiserver => github.com/k3s-io/kubernetes/staging/src/k8s.io/apiextensions-apiserver v1.33.2-k3s1
	k8s.io/apimachinery => github.com/k3s-io/kubernetes/staging/src/k8s.io/apimachinery v1.33.2-k3s1
	k8s.io/apiserver => github.com/k3s-io/kubernetes/staging/src/k8s.io/apiserver v1.33.2-k3s1
	k8s.io/cli-runtime => github.com/k3s-io/kubernetes/staging/src/k8s.io/cli-runtime v1.33.2-k3s1
	k8s.io/client-go => github.com/k3s-io/kubernetes/staging/src/k8s.io/client-go v1.33.2-k3s1
	k8s.io/cloud-provider => github.com/k3s-io/kubernetes/staging/src/k8s.io/cloud-provider v1.33.2-k3s1
	k8s.io/cluster-bootstrap => github.com/k3s-io/kubernetes/staging/src/k8s.io/cluster-bootstrap v1.33.2-k3s1
	k8s.io/code-generator => github.com/k3s-io/kubernetes/staging/src/k8s.io/code-generator v1.33.2-k3s1
	k8s.io/component-base => github.com/k3s-io/kubernetes/staging/src/k8s.io/component-base v1.33.2-k3s1
	k8s.io/component-helpers => github.com/k3s-io/kubernetes/staging/src/k8s.io/component-helpers v1.33.2-k3s1
	k8s.io/controller-manager => github.com/k3s-io/kubernetes/staging/src/k8s.io/controller-manager v1.33.2-k3s1
	k8s.io/cri-api => github.com/k3s-io/kubernetes/staging/src/k8s.io/cri-api v1.33.2-k3s1
	k8s.io/csi-translation-lib => github.com/k3s-io/kubernetes/staging/src/k8s.io/csi-translation-lib v1.33.2-k3s1
	k8s.io/dynamic-resource-allocation => github.com/k3s-io/kubernetes/staging/src/k8s.io/dynamic-resource-allocation v1.33.2-k3s1
	k8s.io/endpointslice => github.com/k3s-io/kubernetes/staging/src/k8s.io/endpointslice v1.33.2-k3s1
	k8s.io/externaljwt => github.com/k3s-io/kubernetes/staging/src/k8s.io/externaljwt v1.33.2-k3s1
	k8s.io/klog => github.com/k3s-io/klog v1.0.0-k3s2 // k3s-release-1.x
	k8s.io/klog/v2 => github.com/k3s-io/klog/v2 v2.120.1-k3s1 // k3s-main
	k8s.io/kms => github.com/k3s-io/kubernetes/staging/src/k8s.io/kms v1.33.2-k3s1
	k8s.io/kube-aggregator => github.com/k3s-io/kubernetes/staging/src/k8s.io/kube-aggregator v1.33.2-k3s1
	k8s.io/kube-controller-manager => github.com/k3s-io/kubernetes/staging/src/k8s.io/kube-controller-manager v1.33.2-k3s1
	k8s.io/kube-openapi => k8s.io/kube-openapi v0.0.0-20241105132330-32ad38e42d3f
	k8s.io/kube-proxy => github.com/k3s-io/kubernetes/staging/src/k8s.io/kube-proxy v1.33.2-k3s1
	k8s.io/kube-scheduler => github.com/k3s-io/kubernetes/staging/src/k8s.io/kube-scheduler v1.33.2-k3s1
	k8s.io/kubectl => github.com/k3s-io/kubernetes/staging/src/k8s.io/kubectl v1.33.2-k3s1
	k8s.io/kubelet => github.com/k3s-io/kubernetes/staging/src/k8s.io/kubelet v1.33.2-k3s1
	k8s.io/kubernetes => github.com/k3s-io/kubernetes v1.33.2-k3s1
	k8s.io/metrics => github.com/k3s-io/kubernetes/staging/src/k8s.io/metrics v1.33.2-k3s1
	k8s.io/mount-utils => github.com/k3s-io/kubernetes/staging/src/k8s.io/mount-utils v1.33.2-k3s1
	k8s.io/node-api => github.com/k3s-io/kubernetes/staging/src/k8s.io/node-api v1.33.2-k3s1
	k8s.io/pod-security-admission => github.com/k3s-io/kubernetes/staging/src/k8s.io/pod-security-admission v1.33.2-k3s1
	k8s.io/sample-apiserver => github.com/k3s-io/kubernetes/staging/src/k8s.io/sample-apiserver v1.33.2-k3s1
	k8s.io/sample-cli-plugin => github.com/k3s-io/kubernetes/staging/src/k8s.io/sample-cli-plugin v1.33.2-k3s1
	k8s.io/sample-controller => github.com/k3s-io/kubernetes/staging/src/k8s.io/sample-controller v1.33.2-k3s1
	sigs.k8s.io/cri-tools => github.com/k3s-io/cri-tools v1.31.0-k3s2
)

require (
	github.com/Microsoft/hcsshim v0.13.0
	github.com/aws/aws-sdk-go v1.55.6
	github.com/containerd/continuity v0.4.5 // indirect
	github.com/containernetworking/plugins v1.7.1
	github.com/google/go-containerregistry v0.20.3
	github.com/iamacarpet/go-win64api v0.0.0-20240507095429-873e84e85847
	github.com/k3s-io/helm-controller v0.16.13
	github.com/k3s-io/k3s v1.33.0-rc1.0.20250715012353-ec165b106313 // master
	github.com/k3s-io/kine v0.13.17
	github.com/libp2p/go-netroute v0.2.2
	github.com/natefinch/lumberjack v2.0.0+incompatible // indirect
	github.com/onsi/ginkgo/v2 v2.23.4
	github.com/onsi/gomega v1.37.0
	github.com/pkg/errors v0.9.1
	github.com/rancher/permissions v0.0.0-20240523180510-4001d3d637f7
	github.com/rancher/wharfie v0.7.0
	github.com/rancher/wins v0.4.17
	github.com/rancher/wrangler/v3 v3.2.2-rc.1
	github.com/sirupsen/logrus v1.9.3
	github.com/spf13/cobra v1.8.1 // indirect
	github.com/spf13/pflag v1.0.6
	github.com/tigera/operator v1.28.1
	github.com/urfave/cli/v2 v2.27.7
	golang.org/x/sync v0.13.0
	golang.org/x/sys v0.32.0
	google.golang.org/grpc v1.73.0
	k8s.io/api v0.33.2
	k8s.io/apimachinery v0.33.2
	k8s.io/apiserver v0.33.2
	k8s.io/client-go v11.0.1-0.20190409021438-1a26190bd76a+incompatible
	k8s.io/component-base v0.33.2
	k8s.io/cri-api v0.33.2
	k8s.io/klog/v2 v2.130.1
	k8s.io/kubernetes v1.33.2
	k8s.io/utils v0.0.0-20250321185631-1f6e0b77f77e
	sigs.k8s.io/yaml v1.4.0
)

require (
	github.com/AdaLogics/go-fuzz-headers v0.0.0-20240806141605-e8a1dd7889d6 // indirect
	github.com/AdamKorcz/go-118-fuzz-build v0.0.0-20231105174938-2b5cbb29f3e2 // indirect
	github.com/Azure/go-ansiterm v0.0.0-20230124172434-306776ec8161 // indirect
	github.com/JeffAshton/win_pdh v0.0.0-20161109143554-76bb4ee9f0ab // indirect
	github.com/Microsoft/go-winio v0.6.2 // indirect
	github.com/Mirantis/cri-dockerd v0.0.0-00010101000000-000000000000 // indirect
	github.com/NYTimes/gziphandler v1.1.1 // indirect
	github.com/Rican7/retry v0.3.1 // indirect
	github.com/alexflint/go-filemutex v1.3.0 // indirect
	github.com/antlr4-go/antlr/v4 v4.13.0 // indirect
	github.com/armon/circbuf v0.0.0-20190214190532-5111143e8da2 // indirect
	github.com/asaskevich/govalidator v0.0.0-20230301143203-a9d515a09cc2 // indirect
	github.com/avast/retry-go/v4 v4.6.1 // indirect
	github.com/benbjohnson/clock v1.3.5 // indirect
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/blang/semver v3.5.1+incompatible // indirect
	github.com/blang/semver/v4 v4.0.0 // indirect
	github.com/bronze1man/goStrongswanVici v0.0.0-20231128135937-211cef3b0b20 // indirect
	github.com/buger/jsonparser v1.1.1 // indirect
	github.com/cenkalti/backoff/v4 v4.3.0 // indirect
	github.com/cespare/xxhash/v2 v2.3.0 // indirect
	github.com/cilium/ebpf v0.17.3 // indirect
	github.com/cloudnativelabs/kube-router/v2 v2.0.0-00010101000000-000000000000 // indirect
	github.com/container-storage-interface/spec v1.9.0 // indirect
	github.com/containerd/cgroups v1.1.0 // indirect
	github.com/containerd/cgroups/v3 v3.0.5 // indirect
	github.com/containerd/containerd/api v1.8.0 // indirect
	github.com/containerd/errdefs v1.0.0 // indirect
	github.com/containerd/fifo v1.1.0 // indirect
	github.com/containerd/log v0.1.0 // indirect
	github.com/containerd/platforms v1.0.0-rc.1 // indirect
	github.com/containerd/stargz-snapshotter v0.16.3 // indirect
	github.com/containerd/stargz-snapshotter/estargz v0.16.3 // indirect
	github.com/containerd/ttrpc v1.2.7 // indirect
	github.com/containerd/typeurl/v2 v2.2.3 // indirect
	github.com/containernetworking/cni v1.3.0 // indirect
	github.com/coreos/go-iptables v0.8.0 // indirect
	github.com/coreos/go-oidc v2.3.0+incompatible // indirect
	github.com/coreos/go-semver v0.3.1 // indirect
	github.com/coreos/go-systemd/v22 v22.5.0 // indirect
	github.com/cpuguy83/go-md2man/v2 v2.0.7 // indirect
	github.com/cyphar/filepath-securejoin v0.4.1 // indirect
	github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc // indirect
	github.com/davidlazar/go-crypto v0.0.0-20200604182044-b73af7476f6c // indirect
	github.com/decred/dcrd/dcrec/secp256k1/v4 v4.4.0 // indirect
	github.com/distribution/reference v0.6.0 // indirect
	github.com/docker/cli v27.5.0+incompatible // indirect
	github.com/docker/distribution v2.8.3+incompatible // indirect
	github.com/docker/docker v27.5.1+incompatible // indirect
	github.com/docker/docker-credential-helpers v0.8.2 // indirect
	github.com/docker/go-connections v0.5.0 // indirect
	github.com/docker/go-metrics v0.0.1 // indirect
	github.com/docker/go-units v0.5.0 // indirect
	github.com/dustin/go-humanize v1.0.1 // indirect
	github.com/elastic/gosigar v0.14.3 // indirect
	github.com/emicklei/go-restful v2.16.0+incompatible // indirect
	github.com/emicklei/go-restful/v3 v3.12.2 // indirect
	github.com/erikdubbelboer/gspt v0.0.0-20190125194910-e68493906b83 // indirect
	github.com/euank/go-kmsg-parser v2.0.0+incompatible // indirect
	github.com/evanphx/json-patch v5.9.11+incompatible // indirect
	github.com/felixge/httpsnoop v1.0.4 // indirect
	github.com/flannel-io/flannel v0.27.0 // indirect
	github.com/flynn/noise v1.1.0 // indirect
	github.com/francoispqt/gojay v1.2.13 // indirect
	github.com/fsnotify/fsnotify v1.7.0 // indirect
	github.com/fxamacker/cbor/v2 v2.8.0 // indirect
	github.com/ghodss/yaml v1.0.1-0.20190212211648-25d852aebe32 // indirect
	github.com/go-logr/logr v1.4.2 // indirect
	github.com/go-logr/stdr v1.2.3-0.20220714215716-96bad1d688c5 // indirect
	github.com/go-ole/go-ole v1.2.6 // indirect
	github.com/go-openapi/jsonpointer v0.21.1 // indirect
	github.com/go-openapi/jsonreference v0.21.0 // indirect
	github.com/go-openapi/swag v0.23.1 // indirect
	github.com/go-sql-driver/mysql v1.9.3 // indirect
	github.com/go-task/slim-sprig/v3 v3.0.0 // indirect
	github.com/go-test/deep v1.0.7 // indirect
	github.com/goccy/go-json v0.10.5 // indirect
	github.com/godbus/dbus/v5 v5.1.0 // indirect
	github.com/gofrs/flock v0.8.1 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang-jwt/jwt/v4 v4.5.2 // indirect
	github.com/golang/groupcache v0.0.0-20241129210726-2c02b8208cf8 // indirect
	github.com/golang/protobuf v1.5.4 // indirect
	github.com/golang/snappy v0.0.4 // indirect
	github.com/google/btree v1.1.3 // indirect
	github.com/google/cabbie v1.0.2 // indirect
	github.com/google/cadvisor v0.52.1 // indirect
	github.com/google/cel-go v0.23.2 // indirect
	github.com/google/glazier v0.0.0-20211029225403-9f766cca891d // indirect
	github.com/google/gnostic-models v0.6.9 // indirect
	github.com/google/go-cmp v0.7.0 // indirect
	github.com/google/gofuzz v1.2.0 // indirect
	github.com/google/gopacket v1.1.19 // indirect
	github.com/google/pprof v0.0.0-20250403155104-27863c87afa6 // indirect
	github.com/google/uuid v1.6.0 // indirect
	github.com/gorilla/mux v1.8.1 // indirect
	github.com/gorilla/websocket v1.5.4-0.20250319132907-e064f32e3674 // indirect
	github.com/grpc-ecosystem/go-grpc-middleware v1.3.0 // indirect
	github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway v1.16.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.24.0 // indirect
	github.com/hanwen/go-fuse/v2 v2.6.3 // indirect
	github.com/hashicorp/errwrap v1.1.0 // indirect
	github.com/hashicorp/go-cleanhttp v0.5.2 // indirect
	github.com/hashicorp/go-multierror v1.1.1 // indirect
	github.com/hashicorp/go-retryablehttp v0.7.7 // indirect
	github.com/hashicorp/go-version v1.7.0 // indirect
	github.com/hashicorp/golang-lru v1.0.2 // indirect
	github.com/hashicorp/golang-lru/arc/v2 v2.0.7 // indirect
	github.com/hashicorp/golang-lru/v2 v2.0.7 // indirect
	github.com/huin/goupnp v1.3.0 // indirect
	github.com/inconshreveable/mousetrap v1.1.0 // indirect
	github.com/ipfs/boxo v0.29.1 // indirect
	github.com/ipfs/go-cid v0.5.0 // indirect
	github.com/ipfs/go-datastore v0.8.2 // indirect
	github.com/ipfs/go-ds-leveldb v0.5.0 // indirect
	github.com/ipfs/go-log/v2 v2.5.1 // indirect
	github.com/ipld/go-ipld-prime v0.21.0 // indirect
	github.com/jackc/pgerrcode v0.0.0-20240316143900-6e2875d9b438 // indirect
	github.com/jackc/pgpassfile v1.0.0 // indirect
	github.com/jackc/pgservicefile v0.0.0-20240606120523-5a60cdf6a761 // indirect
	github.com/jackc/pgx/v5 v5.7.5 // indirect
	github.com/jackc/puddle/v2 v2.2.2 // indirect
	github.com/jackpal/go-nat-pmp v1.0.2 // indirect
	github.com/jbenet/go-temp-err-catcher v0.1.0 // indirect
	github.com/jmespath/go-jmespath v0.4.0 // indirect
	github.com/joho/godotenv v1.5.1 // indirect
	github.com/jonboulle/clockwork v0.5.0 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/josharian/native v1.1.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/karrick/godirwalk v1.17.0 // indirect
	github.com/klauspost/compress v1.18.0 // indirect
	github.com/klauspost/cpuid/v2 v2.2.10 // indirect
	github.com/koron/go-ssdp v0.0.5 // indirect
	github.com/libopenstorage/openstorage v1.0.0 // indirect
	github.com/libp2p/go-buffer-pool v0.1.0 // indirect
	github.com/libp2p/go-cidranger v1.1.0 // indirect
	github.com/libp2p/go-flow-metrics v0.2.0 // indirect
	github.com/libp2p/go-libp2p v0.41.1 // indirect
	github.com/libp2p/go-libp2p-asn-util v0.4.1 // indirect
	github.com/libp2p/go-libp2p-kad-dht v0.31.0 // indirect
	github.com/libp2p/go-libp2p-kbucket v0.7.0 // indirect
	github.com/libp2p/go-libp2p-record v0.3.1 // indirect
	github.com/libp2p/go-libp2p-routing-helpers v0.7.5 // indirect
	github.com/libp2p/go-msgio v0.3.0 // indirect
	github.com/libp2p/go-reuseport v0.4.0 // indirect
	github.com/liggitt/tabwriter v0.0.0-20181228230101-89fcab3d43de // indirect
	github.com/lithammer/dedent v1.1.0 // indirect
	github.com/mailru/easyjson v0.9.0 // indirect
	github.com/marten-seemann/tcp v0.0.0-20210406111302-dfbc87cc63fd // indirect
	github.com/mattn/go-isatty v0.0.20 // indirect
	github.com/mattn/go-sqlite3 v1.14.28 // indirect
	github.com/mdlayher/genetlink v1.3.2 // indirect
	github.com/mdlayher/netlink v1.7.2 // indirect
	github.com/mdlayher/socket v0.5.1 // indirect
	github.com/miekg/dns v1.1.63 // indirect
	github.com/mikioh/tcpinfo v0.0.0-20190314235526-30a79bb1804b // indirect
	github.com/mikioh/tcpopt v0.0.0-20190314235656-172688c1accc // indirect
	github.com/minio/highwayhash v1.0.3 // indirect
	github.com/minio/md5-simd v1.1.2 // indirect
	github.com/minio/minio-go/v7 v7.0.91 // indirect
	github.com/minio/sha256-simd v1.0.1 // indirect
	github.com/mistifyio/go-zfs v2.1.2-0.20190413222219-f784269be439+incompatible // indirect
	github.com/mitchellh/go-homedir v1.1.0 // indirect
	github.com/moby/ipvs v1.1.0 // indirect
	github.com/moby/locker v1.0.1 // indirect
	github.com/moby/spdystream v0.5.0 // indirect
	github.com/moby/sys/mountinfo v0.7.2 // indirect
	github.com/moby/sys/sequential v0.6.0 // indirect
	github.com/moby/sys/signal v0.7.1 // indirect
	github.com/moby/sys/user v0.3.0 // indirect
	github.com/moby/sys/userns v0.1.0 // indirect
	github.com/moby/term v0.5.0 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/mohae/deepcopy v0.0.0-20170929034955-c48cc78d4826 // indirect
	github.com/morikuni/aec v1.0.0 // indirect
	github.com/mr-tron/base58 v1.2.0 // indirect
	github.com/multiformats/go-base32 v0.1.0 // indirect
	github.com/multiformats/go-base36 v0.2.0 // indirect
	github.com/multiformats/go-multiaddr v0.15.0 // indirect
	github.com/multiformats/go-multiaddr-dns v0.4.1 // indirect
	github.com/multiformats/go-multiaddr-fmt v0.1.0 // indirect
	github.com/multiformats/go-multibase v0.2.0 // indirect
	github.com/multiformats/go-multicodec v0.9.0 // indirect
	github.com/multiformats/go-multihash v0.2.3 // indirect
	github.com/multiformats/go-multistream v0.6.0 // indirect
	github.com/multiformats/go-varint v0.0.7 // indirect
	github.com/munnerz/goautoneg v0.0.0-20191010083416-a7dc8b61c822 // indirect
	github.com/mwitkow/go-http-dialer v0.0.0-20161116154839-378f744fb2b8 // indirect
	github.com/mxk/go-flowrate v0.0.0-20140419014527-cca7078d478f // indirect
	github.com/nats-io/jsm.go v0.2.3 // indirect
	github.com/nats-io/jwt/v2 v2.7.4 // indirect
	github.com/nats-io/nats-server/v2 v2.11.3 // indirect
	github.com/nats-io/nats.go v1.43.0 // indirect
	github.com/nats-io/nkeys v0.4.11 // indirect
	github.com/nats-io/nuid v1.0.1 // indirect
	github.com/opencontainers/go-digest v1.0.0 // indirect
	github.com/opencontainers/image-spec v1.1.1 // indirect
	github.com/opencontainers/runc v1.2.6 // indirect
	github.com/opencontainers/runtime-spec v1.2.0 // indirect
	github.com/opencontainers/selinux v1.12.0 // indirect
	github.com/otiai10/copy v1.7.0 // indirect
	github.com/pbnjay/memory v0.0.0-20210728143218-7b4eea64cf58 // indirect
	github.com/pelletier/go-toml/v2 v2.2.4 // indirect
	github.com/pierrec/lz4 v2.6.1+incompatible // indirect
	github.com/pmezard/go-difflib v1.0.1-0.20181226105442-5d4384ee4fb2 // indirect
	github.com/polydawn/refmt v0.89.0 // indirect
	github.com/pquerna/cachecontrol v0.1.0 // indirect
	github.com/prometheus/client_golang v1.22.0 // indirect
	github.com/prometheus/client_model v0.6.2 // indirect
	github.com/prometheus/common v0.63.0 // indirect
	github.com/prometheus/procfs v0.16.1 // indirect
	github.com/quic-go/qpack v0.5.1 // indirect
	github.com/quic-go/quic-go v0.50.1 // indirect
	github.com/quic-go/webtransport-go v0.8.1-0.20241018022711-4ac2c9250e66 // indirect
	github.com/rancher/dynamiclistener v0.7.0 // indirect
	github.com/rancher/lasso v0.2.3-rc1 // indirect
	github.com/rancher/remotedialer v0.4.1 // indirect
	github.com/raulk/go-watchdog v1.3.0 // indirect
	github.com/robfig/cron/v3 v3.0.1 // indirect
	github.com/rootless-containers/rootlesskit v1.1.1 // indirect
	github.com/rs/xid v1.6.0 // indirect
	github.com/russross/blackfriday/v2 v2.1.0 // indirect
	github.com/scjalliance/comshim v0.0.0-20190308082608-cf06d2532c4e // indirect
	github.com/shengdoushi/base58 v1.0.0 // indirect
	github.com/soheilhy/cmux v0.1.5 // indirect
	github.com/spaolacci/murmur3 v1.1.0 // indirect
	github.com/spegel-org/spegel v1.0.18 // indirect
	github.com/spf13/afero v1.14.0 // indirect
	github.com/stoewer/go-strcase v1.3.0 // indirect
	github.com/stretchr/objx v0.5.2 // indirect
	github.com/stretchr/testify v1.10.0 // indirect
	github.com/syndtr/goleveldb v1.0.0 // indirect
	github.com/tidwall/btree v1.8.0 // indirect
	github.com/tmc/grpc-websocket-proxy v0.0.0-20220101234140-673ab2c3ae75 // indirect
	github.com/vbatts/tar-split v0.11.6 // indirect
	github.com/vishvananda/netlink v1.3.1 // indirect
	github.com/vishvananda/netns v0.0.5 // indirect
	github.com/whyrusleeping/go-keyspace v0.0.0-20160322163242-5b898ac5add1 // indirect
	github.com/x448/float16 v0.8.4 // indirect
	github.com/xiang90/probing v0.0.0-20221125231312-a49e3df8f510 // indirect
	github.com/yl2chen/cidranger v1.0.2 // indirect
	go.etcd.io/bbolt v1.4.0 // indirect
	go.etcd.io/etcd/api/v3 v3.5.21 // indirect
	go.etcd.io/etcd/client/pkg/v3 v3.5.21 // indirect
	go.etcd.io/etcd/client/v2 v2.305.21 // indirect
	go.etcd.io/etcd/client/v3 v3.5.21 // indirect
	go.etcd.io/etcd/etcdutl/v3 v3.5.18 // indirect
	go.etcd.io/etcd/pkg/v3 v3.5.21 // indirect
	go.etcd.io/etcd/raft/v3 v3.5.21 // indirect
	go.etcd.io/etcd/server/v3 v3.5.21 // indirect
	go.opencensus.io v0.24.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/github.com/emicklei/go-restful/otelrestful v0.42.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.58.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.58.0 // indirect
	go.opentelemetry.io/otel v1.35.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace v1.33.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc v1.33.0 // indirect
	go.opentelemetry.io/otel/metric v1.35.0 // indirect
	go.opentelemetry.io/otel/sdk v1.35.0 // indirect
	go.opentelemetry.io/otel/trace v1.35.0 // indirect
	go.opentelemetry.io/proto/otlp v1.4.0 // indirect
	go.uber.org/dig v1.18.0 // indirect
	go.uber.org/fx v1.23.0 // indirect
	go.uber.org/mock v0.5.0 // indirect
	go.uber.org/multierr v1.11.0 // indirect
	go.uber.org/zap v1.27.0 // indirect
	golang.org/x/crypto v0.37.0 // indirect
	golang.org/x/exp v0.0.0-20250408133849-7e4ce0ab07d0 // indirect
	golang.org/x/mod v0.24.0 // indirect
	golang.org/x/net v0.39.0 // indirect
	golang.org/x/oauth2 v0.27.0 // indirect
	golang.org/x/term v0.30.0 // indirect
	golang.org/x/text v0.24.0 // indirect
	golang.org/x/time v0.11.0 // indirect
	golang.org/x/tools v0.32.0 // indirect
	golang.zx2c4.com/wireguard v0.0.0-20231211153847-12269c276173 // indirect
	golang.zx2c4.com/wireguard/wgctrl v0.0.0-20241231184526-a9ab2273dd10 // indirect
	gonum.org/v1/gonum v0.15.1 // indirect
	google.golang.org/genproto v0.0.0-20241118233622-e639e219e697 // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20250414145226-207652e42e2e // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20250414145226-207652e42e2e // indirect
	google.golang.org/protobuf v1.36.6 // indirect
	gopkg.in/evanphx/json-patch.v4 v4.12.0 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/natefinch/lumberjack.v2 v2.2.1
	gopkg.in/yaml.v2 v2.4.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	k8s.io/apiextensions-apiserver v0.33.2 // indirect
	k8s.io/cli-runtime v0.33.2 // indirect
	k8s.io/cloud-provider v0.33.2 // indirect
	k8s.io/cluster-bootstrap v0.0.0 // indirect
	k8s.io/component-helpers v0.33.2 // indirect
	k8s.io/controller-manager v0.27.10 // indirect
	k8s.io/cri-client v0.33.2 // indirect
	k8s.io/csi-translation-lib v0.0.0 // indirect
	k8s.io/dynamic-resource-allocation v0.0.0 // indirect
	k8s.io/endpointslice v0.0.0 // indirect
	k8s.io/kms v0.27.10 // indirect
	k8s.io/kube-aggregator v0.33.2 // indirect
	k8s.io/kube-controller-manager v0.0.0 // indirect
	k8s.io/kube-openapi v0.0.0-20250318190949-c8a335a9a2ff // indirect
	k8s.io/kube-proxy v0.0.0 // indirect
	k8s.io/kube-scheduler v0.0.0 // indirect
	k8s.io/kubectl v0.33.2 // indirect
	k8s.io/kubelet v0.33.2 // indirect
	k8s.io/metrics v0.0.0 // indirect
	k8s.io/mount-utils v0.32.4 // indirect
	k8s.io/pod-security-admission v0.0.0 // indirect
	lukechampine.com/blake3 v1.4.0 // indirect
	sigs.k8s.io/apiserver-network-proxy/konnectivity-client v0.31.2 // indirect
	sigs.k8s.io/controller-runtime v0.19.0 // indirect
	sigs.k8s.io/json v0.0.0-20241014173422-cfa47c3a1cc8 // indirect
	sigs.k8s.io/knftables v0.0.18 // indirect
	sigs.k8s.io/structured-merge-diff/v4 v4.7.0 // indirect
)

require (
	cel.dev/expr v0.19.1 // indirect
	filippo.io/edwards25519 v1.1.0 // indirect
	github.com/Microsoft/hnslib v0.1.1 // indirect
	github.com/containerd/containerd/v2 v2.0.5 // indirect
	github.com/containerd/errdefs/pkg v0.3.0 // indirect
	github.com/containerd/fuse-overlayfs-snapshotter/v2 v2.1.0 // indirect
	github.com/containerd/plugin v1.0.0 // indirect
	github.com/expr-lang/expr v1.17.2 // indirect
	github.com/go-ini/ini v1.67.0 // indirect
	github.com/google/go-tpm v0.9.4 // indirect
	github.com/inetaf/tcpproxy v0.0.0-20240214030015-3ce58045626c // indirect
	github.com/ipfs/go-log v1.0.5 // indirect
	github.com/k3s-io/api v0.1.2 // indirect
	github.com/kylelemons/godebug v1.1.0 // indirect
	github.com/libp2p/go-yamux/v5 v5.0.0 // indirect
	github.com/minio/crc64nvme v1.0.1 // indirect
	github.com/opencontainers/cgroups v0.0.1 // indirect
	github.com/opentracing/opentracing-go v1.2.0 // indirect
	github.com/pion/datachannel v1.5.10 // indirect
	github.com/pion/dtls/v2 v2.2.12 // indirect
	github.com/pion/dtls/v3 v3.0.4 // indirect
	github.com/pion/ice/v4 v4.0.8 // indirect
	github.com/pion/interceptor v0.1.39 // indirect
	github.com/pion/logging v0.2.3 // indirect
	github.com/pion/mdns/v2 v2.0.7 // indirect
	github.com/pion/randutil v0.1.0 // indirect
	github.com/pion/rtcp v1.2.15 // indirect
	github.com/pion/rtp v1.8.18 // indirect
	github.com/pion/sctp v1.8.37 // indirect
	github.com/pion/sdp/v3 v3.0.10 // indirect
	github.com/pion/srtp/v3 v3.0.4 // indirect
	github.com/pion/stun v0.6.1 // indirect
	github.com/pion/stun/v3 v3.0.0 // indirect
	github.com/pion/transport/v2 v2.2.10 // indirect
	github.com/pion/transport/v3 v3.0.7 // indirect
	github.com/pion/turn/v4 v4.0.0 // indirect
	github.com/pion/webrtc/v4 v4.0.10 // indirect
	github.com/wlynxg/anet v0.0.5 // indirect
	github.com/xrash/smetrics v0.0.0-20240521201337-686a1a2994c1 // indirect
	go.opentelemetry.io/auto/sdk v1.1.0 // indirect
	go.uber.org/automaxprocs v1.6.0 // indirect
	gopkg.in/go-jose/go-jose.v2 v2.6.3 // indirect
	k8s.io/externaljwt v1.32.0 // indirect
	sigs.k8s.io/randfill v1.0.0 // indirect
)
