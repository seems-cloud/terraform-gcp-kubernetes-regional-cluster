resource "google_compute_router" "aaa_gke_aaa-router" {
  name = var.aaa_gke_aaa-name
  region = var.aaa_gke_aaa-region
  network = google_compute_network.aaa_vpc_aaa.name

  depends_on = [
    google_compute_network.aaa_vpc_aaa]
}