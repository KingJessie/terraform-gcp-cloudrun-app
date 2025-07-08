resource "google_cloud_run_service_iam_member" "public_access" {
  location = var.region
  project  = var.project_id
  service  = var.service_name
  role     = "roles/run.invoker"
  member   = "allUsers"
}
