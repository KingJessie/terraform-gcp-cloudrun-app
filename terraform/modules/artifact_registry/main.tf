resource "google_artifact_registry_repository" "my-repo" {
  project       = var.project_id
  location      = var.region
  repository_id = var.repository
  description   = "example docker repository"
  format        = "DOCKER"

  docker_config {
    immutable_tags = true
  }
}