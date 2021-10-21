resource "google_compute_subnetwork" "aaa_gke_aaa" {
  name = var.aaa_gke_aaa-name
  ip_cidr_range = var.aaa_gke_aaa-cidr
  region = var.aaa_gke_aaa-region
  network = google_compute_network.aaa_vpc_aaa.name

  depends_on = [
    google_compute_network.aaa_vpc_aaa]
}

resource "google_compute_subnetwork" "aaa_gke_pool_aaa" {
  name = var.aaa_gke_pool_aaa-name
  ip_cidr_range = var.aaa_gke_pool_aaa-cidr
  region = var.aaa_gke_pool_aaa-region
  network = google_compute_network.aaa_vpc_aaa.name

  depends_on = [
    google_compute_network.aaa_vpc_aaa]
}