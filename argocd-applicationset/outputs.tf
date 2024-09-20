output "applicationset_name" {
  value = argocd_application_set.my_applicationset.metadata[0].name
}
