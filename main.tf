module "artifact_registry" {
  source     = "./modules/artifact_registry"
  project_id = var.project_id
  region     = var.region
  repository = var.repository
}

module "cloud_run" {
  source        = "./modules/cloud_run"
  project_id    = var.project_id
  region        = var.region
  service_name  = "pw-generator"
  image         = "europe-west2-docker.pkg.dev/${var.project_id}/docker/pw-generator:${var.version}"
}

module "dns" {
  source     = "./modules/dns"
  project_id = var.project_id
}

module "iam" {
  source       = "./modules/iam"
  project_id   = var.project_id
  region       = module.cloud_run.region
  service_name = module.cloud_run.service_name
}

module "ssl" {
  source       = "./modules/ssl"
  project_id   = var.project_id
  region       = var.region
  service_name = module.cloud_run.service_name
}