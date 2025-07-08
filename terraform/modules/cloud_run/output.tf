output "url" {
  description = "Public URL for the deployed Cloud Run service"
  value       = google_cloud_run_service.default.status[0].url
}

output "service_name" {
  value = google_cloud_run_service.default.name
}

output "region" {
  value = google_cloud_run_service.default.location
}