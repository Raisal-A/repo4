variable "namespace" {
  description = "The namespace where the apps will be deployed"
  type        = string
}

variable "values_file" {
  description = "The values file for Helm"
  type        = string
}

variable "argocd_server" {
  description = "The ArgoCD server URL"
  type        = string
}

variable "argocd_username" {
  description = "The ArgoCD username"
  type        = string
}

variable "argocd_password" {
  description = "The ArgoCD password"
  type        = string
}
