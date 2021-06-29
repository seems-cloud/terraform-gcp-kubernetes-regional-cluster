module "networking" {
  source = "./networking"

  random = local.random

  # Network
  aaa_vpc_aaa = local.aaa_vpc_aaa

  # Instance
  aaa_instance_aaa-name = local.aaa_instance_aaa-name
  aaa_instance_aaa-region = var.aaa_instance_aaa-region
  aaa_instance_aaa-zone = var.aaa_instance_aaa-zone
  aaa_instance_aaa-cidr = var.aaa_instance_aaa-cidr

  # GKE Cluster
  aaa_gke_aaa-name = local.aaa_gke_aaa-name
  aaa_gke_aaa-region = var.aaa_gke_aaa-region
  aaa_gke_aaa-cidr = var.aaa_gke_aaa-cidr

  # GKE Pool
  aaa_gke_pool_aaa-name = local.aaa_gke_pool_aaa-name
  aaa_gke_pool_aaa-region = var.aaa_gke_pool_aaa-region
  aaa_gke_pool_aaa-cidr = var.aaa_gke_pool_aaa-cidr
}
