resource "google_container_cluster" "cluster" {
  name = var.gke_name

  location = var.gke_region
  node_locations = var.gke_a_pool_zones

  min_master_version = var.gke_min_master_version

  network = var.network_name
  subnetwork = var.gke_subnetwork_name

  initial_node_count = var.gke_init_nodes
  remove_default_node_pool = true

  private_cluster_config {
    enable_private_nodes = true
    enable_private_endpoint = true

    master_ipv4_cidr_block = "172.16.0.0/28"
  }

  ip_allocation_policy {

  }

  master_authorized_networks_config {
    cidr_blocks {
      display_name = "bastion"
      cidr_block   = format("%s/32", var.gke_authorized_host)
    }
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
    disk_size_gb = 50

    tags = var.gke_tags

    service_account = google_service_account.service_account.email

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
    ]
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

  workload_identity_config {
    identity_namespace = "${var.project_id}.svc.id.goog"
  }

  depends_on = [
    var.dependencies,
    google_service_account.service_account]
}

