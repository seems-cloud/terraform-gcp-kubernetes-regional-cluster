resource "google_container_node_pool" "a-pool" {
  name = var.gke_a_pool_name

  location = var.gke_a_pool_region
  node_locations = var.gke_a_pool_zones

  cluster = google_container_cluster.cluster.name

  initial_node_count = var.gke_a_pool_init_nodes

  autoscaling {
    min_node_count = var.gke_a_pool_mix_nodes_nodes
    max_node_count = var.gke_a_pool_max_nodes_nodes
  }

  node_config {
    preemptible = var.gke_a_pool_preemptible
    machine_type = var.gke_a_pool_machine_type
    disk_type = "pd-ssd"
    disk_size_gb = 50

    tags = var.gke_tags

    service_account = google_service_account.service_account.email
    
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
    ]
  }

  management {
    auto_repair = true
    auto_upgrade = true
  }

  depends_on = [
    var.dependencies,
    google_container_cluster.cluster,
    google_service_account.service_account]
}
