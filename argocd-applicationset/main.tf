resource "argocd_application_set" "my_applicationset" {
  metadata {
    name      = "my-applicationset"
    namespace = "argocd"
  }

  spec {
    generators {
      list {
        elements {
          name        = "nginx"
          namespace   = var.namespace
          values_file = var.values_file
        }
        elements {
          name        = "apache2"
          namespace   = var.namespace
          values_file = var.values_file
        }
      }
    }

    template {
      metadata {
        name      = "{{name}}"
        namespace = "{{namespace}}"
      }

      spec {
        project = "default"
        source {
          repo_url        = "https://github.com/Raisal-A/repo3.git"
          path            = "{{name}}"
          target_revision = "HEAD"
          helm {
            value_files = [
              "https://github.com/Raisal-A/repo4.git/env/{{values_file}}"
            ]
          }
        }

        destination {
          server    = "https://kubernetes.default.svc"
          namespace = "{{namespace}}"
        }

        sync_policy {
          automated {
            prune     = true
            self_heal = true
          }
        }
      }
    }
  }
}
