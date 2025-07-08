variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "europe-west2"
}

variable "service_name" {
  description = "Name of the Cloud Run service"
  type        = string
  default     = "pw-generator"
}
