output "aaa_instance_aaa-internal_address" {
  value = google_compute_instance.aaa_instance_aaa.network_interface[0].network_ip
}