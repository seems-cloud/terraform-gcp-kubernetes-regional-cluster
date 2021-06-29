resource "google_container_node_pool" "aaa_pool_aaa" {
  name = var.aaa_gke_pool_aaa-name

  location = var.aaa_gke_pool_aaa-region
  node_locations = var.aaa_gke_pool_aaa-zones

  cluster = google_container_cluster.aaa_gke_aaa.name

  initial_node_count = var.aaa_gke_pool_aaa-init

  autoscaling {
    min_node_count = var.aaa_gke_pool_aaa-min
    max_node_count = var.aaa_gke_pool_aaa-max
  }

  node_config {
    preemptible = var.aaa_gke_pool_aaa-preemptible
    machine_type = var.aaa_gke_pool_aaa-type
    disk_type = "pd-ssd"
    disk_size_gb = 50

    tags = var.aaa_gke_pool_aaa-tags

    service_account = google_service_account.aaa_gke_aaa.email

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
    google_container_cluster.aaa_gke_aaa,
    google_service_account.aaa_gke_aaa]
}
