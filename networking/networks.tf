resource "google_compute_network" "aaa_vpc_aaa" {
  name = var.aaa_vpc_aaa
  auto_create_subnetworks = false
}