output "network_name" {
  value = google_compute_network.network.name
}

output "network_id" {
  value = google_compute_network.network.id
}

output "subnetwork_bastion_name" {
  value = google_compute_subnetwork.bastion.name
}

output "address_bastion_address" {
  value = google_compute_address.bastion.address
}

output "subnetwork_gke_name" {
  value = google_compute_subnetwork.gke-cluster.name
}

output "subnetwork_gke_a_pool_name" {
  value = google_compute_subnetwork.gke-a-pool
}

output "router_nat_gke_cluster" {
  value = google_compute_router_nat.gke-router-nat
}