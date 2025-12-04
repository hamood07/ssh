resource "google_compute_instance" "vm_instance" {
  name         = "jenkins-vm"
  machine_type = "e2-medium"
  zone         = "us-west3"

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
