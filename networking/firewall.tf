resource "google_compute_firewall" "from-bastion-to-all" {
  name = "${var.random}-from-bastion-to-cluster"
  network = google_compute_network.aaa_vpc_aaa.name

  direction = "INGRESS"

  source_tags = [
    "bastion"]
  target_tags = [
    "all"]

  allow {
    protocol = "tcp"
    ports = [
      "22"]
  }

  depends_on = [
    google_compute_network.aaa_vpc_aaa]
}

resource "google_compute_firewall" "from-internet-to-bastion" {
  name = "${var.random}-from-internet-to-bastion"
  network = google_compute_network.aaa_vpc_aaa.name

  direction = "INGRESS"

  source_ranges = [
    "0.0.0.0/0"]
  target_tags = [
    "bastion"]

  allow {
    protocol = "tcp"
    ports = [
      "22", "8080"]
  }

  depends_on = [
    google_compute_network.aaa_vpc_aaa]
}