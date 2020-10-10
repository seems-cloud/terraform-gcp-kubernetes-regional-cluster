resource "google_compute_router_nat" "gke-router-nat" {
  name = "${var.gke_name}-router-nat"

  router = google_compute_router.gke-cluster-router.name
  region = google_compute_router.gke-cluster-router.region

  nat_ip_allocate_option = "MANUAL_ONLY"
  nat_ips = google_compute_address.gke-cloud-nat.*.self_link

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"

  subnetwork {
    name = google_compute_subnetwork.gke-a-pool.name
    source_ip_ranges_to_nat = [
      "ALL_IP_RANGES"]
  }

  subnetwork {
    name = google_compute_subnetwork.gke-cluster.name
    source_ip_ranges_to_nat = [
      "ALL_IP_RANGES"]
  }

  depends_on = [
    google_compute_network.network,
    google_compute_subnetwork.gke-a-pool,
    google_compute_subnetwork.gke-cluster]
}