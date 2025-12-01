resource "google_compute_instance" "my_instance" {
  zone         = "europe-west1-b"
  name         = "infracost-test"

  machine_type = "n1-standard-16"

  network_interface {
    network = "default"
    access_config {}
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
}
