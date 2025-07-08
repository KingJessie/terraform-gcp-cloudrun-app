resource "google_dns_managed_zone" "default" {
  project     = var.project_id
  name        = "jess-dns-app"
  dns_name    = "jess-pw-generator-app.com."
  description = "Public DNS zone"
  visibility = "public"
}