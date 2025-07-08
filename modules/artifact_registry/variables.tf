variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "europe-west2"
}

variable "repository" {
  description = "Artifact Registry repo name"
  type        = string
  default     = "docker"
}
