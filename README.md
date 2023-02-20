## Installs CRDs required

This installs CRDs in Kubernetes cluster based on https://github.com/iits-consulting/crds-chart.

Usage example:

```hcl
module "argocd" {
  source  = "iits-consulting/crds/helm"
  version = "0.0.2"
}
```
