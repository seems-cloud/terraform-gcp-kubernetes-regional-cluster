module "networking" {
  source = "./networking"

  random = local.random

  network = local.network

  gke_name = local.gke_name
  gke_region = var.gke_region
  gke_network_cidr = var.gke_network_cidr

  gke_a_pool_name = local.gke_a_pool_name
  gke_a_pool_region = var.gke_a_pool_region
  gke_a_pool_network_cidr = var.gke_a_pool_network_cidr

  bastion_name = local.bastion_name
  bastion_region = var.bastion_region
  bastion_zone = var.bastion_zone
  bastion_network_cidr = var.bastion_network_cidr
}
