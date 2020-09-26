resource "google_container_node_pool" "a-pool" {
  name = var.gke_a_pool_name

  location = var.gke_a_pool_region
  node_locations = var.gke_a_pool_zones

  cluster = google_container_cluster.gke.name

  initial_node_count = var.gke_a_pool_init_nodes

  autoscaling {
    min_node_count = var.gke_a_pool_mix_nodes_nodes
    max_node_count = var.gke_a_pool_max_nodes_nodes
  }

  node_config {
    machine_type = var.gke_a_pool_machine_type
    disk_type = "pd-ssd"
    disk_size_gb = 50

    tags = var.gke_tags

    service_account = google_service_account.service_account.email
  }

  management {
    auto_repair = true
    auto_upgrade = true
  }

  depends_on = [
    var.dependencies,
    google_container_cluster.gke,
    google_service_account.service_account]
}
