resource "google_compute_instance" "aaa_instance_aaa" {
  name = var.aaa_instance_aaa-name
  machine_type = var.aaa_instance_aaa-type

  zone = var.aaa_instance_aaa-zone

  tags = var.aaa_instance_aaa-tags

  boot_disk {
    initialize_params {
      image = var.aaa_instance_aaa-image
    }
  }
  network_interface {
    subnetwork = var.aaa_instance_aaa-subnetwork_name

    access_config {
      nat_ip = var.aaa_instance_aaa-external_address
    }
  }

  scheduling {
    preemptible = var.aaa_instance_aaa-preemptible
    automatic_restart = false
  }

  allow_stopping_for_update = true

  depends_on = [
    var.dependencies]
}