resource "google_compute_router_nat" "aaa_gke_aaa" {
  name = var.aaa_gke_aaa-name

  router = google_compute_router.aaa_gke_aaa-router.name
  region = google_compute_router.aaa_gke_aaa-router.region

  nat_ip_allocate_option = "MANUAL_ONLY"
  nat_ips = google_compute_address.aaa_gke_aaa-external.*.self_link

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"

  subnetwork {
    name = google_compute_subnetwork.aaa_gke_aaa.name
    source_ip_ranges_to_nat = [
      "ALL_IP_RANGES"]
  }

  subnetwork {
    name = google_compute_subnetwork.aaa_gke_pool_aaa.name
    source_ip_ranges_to_nat = [
      "ALL_IP_RANGES"]
  }

  depends_on = [
    google_compute_network.aaa_vpc_aaa,
    google_compute_subnetwork.aaa_gke_aaa,
    google_compute_subnetwork.aaa_gke_pool_aaa]
}