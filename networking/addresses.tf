resource "google_compute_address" "bastion" {
  name = var.bastion_name
}

resource "google_compute_address" "gke-cloud-nat" {
  name = "${var.gke_name}-nat"
}