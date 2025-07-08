terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.41.0"
    }
  }
}

provider "google" {
  project = "aqueous-rarity-465009-h8"
  region  = "europe-west2"
  zone    = "europe-west2-b"
}

terraform {
  backend "gcs" {
    bucket = "tf-state-dev-mytest-project"
    prefix = "cloudrun/app"
  }
}