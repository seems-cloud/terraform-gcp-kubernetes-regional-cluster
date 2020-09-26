module "gke" {
  source = "./gke"

  network_name = local.network

  gke_preemptible = var.gke_preemptible

  gke_name = var.gke_name
  gke_tags = var.gke_tags
  gke_region = var.gke_region
  gke_zones = var.gke_zones
  gke_network_cidr = var.gke_network_cidr
  gke_subnetwork_name = module.networking.subnetwork_gke_name
  gke_min_master_version = var.gke_min_master_version
  gke_machine_type = var.gke_machine_type
  gke_init_nodes = var.gke_init_nodes

  gke_a_pool_name = var.gke_a_pool_name
  gke_a_pool_tags = var.gke_a_pool_tags
  gke_a_pool_region = var.gke_a_pool_region
  gke_a_pool_zones = var.gke_a_pool_zones
  gke_a_pool_machine_type = var.gke_a_pool_machine_type
  gke_a_pool_init_nodes = var.gke_a_pool_init_nodes
  gke_a_pool_mix_nodes_nodes = var.gke_a_pool_min_nodes
  gke_a_pool_max_nodes_nodes = var.gke_a_pool_max_nodes

  dependencies = [
    "module.networking",
    "module.bastion"]
}