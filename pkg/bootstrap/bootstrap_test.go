package bootstrap

import (
	"reflect"
	"testing"
)

func Test_findAllMatches(t *testing.T) {
	tests := []struct {
		name string // description of this test case
		// Named input parameters for target function.
		path    string
		want    map[string]bool
		wantErr bool
	}{
		{
			name:    "no unsupported annotations",
			path:    "testdata/good_annotations.yml",
			want:    map[string]bool{},
			wantErr: false,
		},
		{
			name: "with unsupported annotations",
			path: "testdata/bad_annotations.yml",
			want: map[string]bool{
				"nginx.ingress.kubernetes.io/auth-keepalive-requests": true,
				"nginx.ingress.kubernetes.io/canary":                  true,
				"nginx.ingress.kubernetes.io/enable-opentelemetry":    true,
				"nginx.ingress.kubernetes.io/proxy-connect-timeout":   true,
			},
			wantErr: false,
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			matchSet, err := loadEmbeddedAnnotationsSet(embeddedAnnotationMatches)
			if err != nil {
				t.Errorf("failed to load embedded unsupported ingress annotations: %v", err)
				return
			}
			got, gotErr := findAllMatches(tt.path, matchSet)
			if (gotErr != nil) != tt.wantErr {
				t.Errorf("findAllMatches() error = %v, wantErr %v", err, tt.wantErr)
				return
			}
			if !reflect.DeepEqual(got, tt.want) {
				t.Errorf("findAllMatches() Got = %+v\nWant = %+v", got, tt.want)
			}
		})
	}
}

func Test_searchForUnsupportedNginxAnnotations(t *testing.T) {
	tests := []struct {
		name string // description of this test case
		// Named input parameters for target function.
		manifestsDir string
		wantErr      bool
	}{
		{
			name:         "directory with good and bad annotations",
			manifestsDir: "testdata",
			wantErr:      true,
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			gotErr := searchForUnsupportedNginxAnnotations(tt.manifestsDir)
			if (gotErr != nil) != tt.wantErr {
				t.Errorf("searchForUnsupportedNginxAnnotations() error = %v, wantErr %v", gotErr, tt.wantErr)
				return
			}
		})
	}
}
