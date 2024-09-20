terraform {
  required_providers {
    argocd = {
      source  = "argoproj/argocd"
      version = "~> 1.0"
    }
  }
}

provider "argocd" {
  server   = var.argocd_server
  username = var.argocd_username
  password = var.argocd_password
}
