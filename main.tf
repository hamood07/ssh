resource "google_compute_instance" "vm_instance" {
  name         = "jenkins-vm"
  machine_type = "e2-medium"
  zone         = var.region  # use region as zone for simplicity (adjust if needed)

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network       = "default"
    access_config {}
  }
}
