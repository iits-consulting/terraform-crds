resource "helm_release" "custom_resource_definitions" {
  name                  = "crds"
  repository            = "https://iits-consulting.github.io/crds-chart"
  chart                 = "crds"
  version               = var.custom_resource_definitions_version
  namespace             = var.custom_resource_definitions_namespace
  create_namespace      = true
  render_subchart_notes = true
  dependency_update     = true
}
