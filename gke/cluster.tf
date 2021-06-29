resource "google_container_cluster" "aaa_gke_aaa" {
  name = var.aaa_gke_aaa-name

  location = var.aaa_gke_aaa-region
  node_locations = var.aaa_gke_pool_aaa-zones

  min_master_version = var.aaa_gke_aaa-min_version

  network = var.aaa_vpc_aaa
  subnetwork = var.aaa_gke_aaa-subnetwork_name

  initial_node_count = var.aaa_gke_aaa-init
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
      cidr_block = format("%s/32", var.aaa_gke_aaa-authorized)
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
    preemptible = var.aaa_gke_aaa-preemptible

    machine_type = var.aaa_gke_aaa-type
    disk_type = "pd-ssd"
    disk_size_gb = 50

    tags = var.aaa_gke_aaa-tags

    service_account = google_service_account.aaa_gke_aaa.email

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
    google_service_account.aaa_gke_aaa]
}

