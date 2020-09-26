//module "gke" {
//  source = "./gke"
//
//  network_name = var.network
//
//  gke_cluster_preemptible = var.gke_preemptible
//
//  gke_cluster_name = var.gke_name
//  gke_cluster_tags = var.gke_tags
//  gke_cluster_region = var.gke_region
//  gke_cluster_zones = var.gke_zones
//  gke_cluster_network_cidr = var.gke_network_cidr
//  gke_cluster_subnetwork_name = module.networking.subnetwork_gke_regional_cluster_name
//  gke_cluster_min_master_version = var.gke_min_master_version
//  gke_cluster_machine_type = var.gke_machine_type
//  gke_cluster_init_nodes = var.gke_init_nodes
//
//  gke_normal_pool_name = var.gke_a_pool_name
//  gke_normal_pool_tags = var.gke_a_pool_tags
//  gke_normal_pool_region = var.gke_a_pool_region
//  gke_normal_pool_zones = var.gke_a_pool_zones
//  gke_normal_pool_machine_type = var.gke_a_pool_machine_type
//  gke_normal_pool_init_nodes = var.gke_a_pool_init_nodes
//  gke_normal_pool_mix_nodes_nodes = var.gke_a_pool_min_nodes
//  gke_normal_pool_max_nodes_nodes = var.gke_a_pool_max_nodes
//
//  dependencies = [
//    "module.networking",
//    "module.bastion"]
//}