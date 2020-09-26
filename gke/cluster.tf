resource "google_container_cluster" "gke" {
  name = var.gke_name

  location = var.gke_region
  node_locations = var.gke_a_pool_zones

  min_master_version = var.gke_min_master_version

  network = var.network_name
  subnetwork = var.gke_subnetwork_name

  initial_node_count = var.gke_init_nodes
  remove_default_node_pool = true

  private_cluster_config {
    enable_private_endpoint = false
  }

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }

  node_config {
    preemptible = var.gke_preemptible

    machine_type = var.gke_machine_type
    disk_type = "pd-ssd"
    disk_size_gb = 100

    tags = var.gke_tags

    service_account = google_service_account.service_account.email
  }

  addons_config {
    http_load_balancing {
      disabled = false
    }
    horizontal_pod_autoscaling {
      disabled = false
    }
  }

  vertical_pod_autoscaling {
    enabled = true
  }

  cluster_autoscaling {
    enabled = true

    resource_limits {
      minimum = 10
      maximum = 50
      resource_type = "cpu"
    }

    resource_limits {
      minimum = 10
      maximum = 50
      resource_type = "memory"
    }
  }

  depends_on = [
    var.dependencies,
    google_service_account.service_account]
}

