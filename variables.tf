
variable "custom_resource_definitions_version" {
  description = "Version of CRD collection chart. (default: 1.4.1)"
  type        = string
  default     = "1.4.1"
}

variable "custom_resource_definitions_namespace" {
  description = "Kubernetes namespace to install CRD collection chart to. (default: crds)"
  type        = string
  default     = "crds"
}
