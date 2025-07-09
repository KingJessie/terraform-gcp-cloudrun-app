terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.41.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = "europe-west2-b"
}

terraform {
  backend "gcs" {
    bucket = "tf-state-dev-mytest-project"
    prefix = "cloudrun/app"
  }
}