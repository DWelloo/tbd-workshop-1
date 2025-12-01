resource "google_compute_network" "infracost_net" {
  name                    = "infracost-net"
  auto_create_subnetworks = true
}
# checkov:skip=CKV_GCP_40: Public IP allowed for infracost test instance
# checkov:skip=CKV_GCP_32: Project-wide SSH keys not relevant for test instance
# checkov:skip=CKV_GCP_38: No customer-supplied encryption key needed for test instance
# checkov:skip=CKV_GCP_39: Shielded VM not required for test instance
resource "google_compute_instance" "my_instance" {
  zone = "europe-west1-b"
  name = "infracost-test"

  machine_type = "n1-standard-16"

  network_interface {
    network = google_compute_network.infracost_net.self_link
    access_config {}
  }

  boot_disk {
    initialize_params {
      image = "projects/debian-cloud/global/images/family/debian-11"
    }
  }
}

