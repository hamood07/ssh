resource "google_compute_instance" "vm_instance" {
  name         = "jenkins-vm"
  machine_type = "e2-medium"
  zone = data.google_compute_zones.available.names[0]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
