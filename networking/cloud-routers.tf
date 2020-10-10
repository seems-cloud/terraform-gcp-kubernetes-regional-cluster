resource "google_compute_router" "gke-cluster-router" {
  name = "${var.gke_name}-router"
  region = var.gke_region
  network = google_compute_network.network.name

  depends_on = [
    google_compute_network.network]
}