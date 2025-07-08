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

variable "repository" {
  description = "Artifact Registry repo name"
  type        = string
  default     = "docker"
}

variable "image" {
  description = "Full container image URI including tag"
  type        = string
}

variable "version" {
  description = "Image tag version"
  type        = string
}