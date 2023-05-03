# DEPRECATED

To have its own module is to complicated. We made it simpler and just using this chart here: https://github.com/iits-consulting/charts/tree/main/charts/crds

we use it in the future like this:

```hcl
resource "helm_release" "custom_resource_definitions" {
  name                  = "crds"
  repository            = "https://charts.iits.tech"
  chart                 = "crds"
  version               = local.charts.crds_version
  namespace             = "crds"
  create_namespace      = true
  render_subchart_notes = true
  dependency_update     = true
}
```


## Installs CRDs required

This installs CRDs in Kubernetes cluster based on https://github.com/iits-consulting/crds-chart.

Usage example:

```hcl
module "crds" {
  source  = "iits-consulting/crds/helm"
  version = "0.0.2"
}
```
