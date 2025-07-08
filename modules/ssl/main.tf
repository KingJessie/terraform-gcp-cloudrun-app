resource "google_cloud_run_domain_mapping" "custom" {
  location = var.region
  name     = "jess-pw-generator-app.com"

  metadata {
    namespace = var.project_id
  }

  spec {
    route_name = var.service_name
  }
}