module "gke" {
  source = "./gke"

  project_id = var.project_id

  # Network
  aaa_vpc_aaa = local.aaa_vpc_aaa

  # GKE Cluster
  aaa_gke_aaa-preemptible = var.aaa_gke_aaa-preemptible
  aaa_gke_aaa-name = local.random
  aaa_gke_aaa-authorized = module.bastion.aaa_instance_aaa-internal_address
  aaa_gke_aaa-tags = var.aaa_gke_aaa-tags
  aaa_gke_aaa-region = var.aaa_gke_aaa-region
  aaa_gke_aaa-zones = var.aaa_gke_aaa-zones
  aaa_gke_aaa-cidr = var.aaa_gke_aaa-cidr
  aaa_gke_aaa-type = var.aaa_gke_aaa-type
  aaa_gke_aaa-init = var.aaa_gke_aaa-init
  aaa_gke_aaa-subnetwork_name = module.networking.aaa_gke_aaa-subnetwork_name
  aaa_gke_aaa-min_version = var.aaa_gke_aaa-min_version

  # GKE Pool
  aaa_gke_pool_aaa-preemptible = var.aaa_gke_pool_aaa-preemptible
  aaa_gke_pool_aaa-name = local.aaa_gke_pool_aaa-name
  aaa_gke_pool_aaa-tags = var.aaa_gke_pool_aaa-tags
  aaa_gke_pool_aaa-region = var.aaa_gke_pool_aaa-region
  aaa_gke_pool_aaa-zones = var.aaa_gke_pool_aaa-zones
  aaa_gke_pool_aaa-type = var.aaa_gke_pool_aaa-type
  aaa_gke_pool_aaa-init = var.aaa_gke_pool_aaa-init
  aaa_gke_pool_aaa-min = var.aaa_gke_pool_aaa-min
  aaa_gke_pool_aaa-max = var.aaa_gke_pool_aaa-max

  # Dependencies
  dependencies = [
    "module.networking",
    "module.bastion"]
}
