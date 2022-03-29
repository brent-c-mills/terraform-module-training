# Generic GCP compute module

# random ID generation
resource "random_id" "instance_id" {
  byte_length = 8
}

# Generate a compute engine instance
resource "google_compute_instance" "default_instance" {
  count        = var.instance_count
  name         = "${var.compute_name_stem}-${count.index+1}"
  machine_type = var.compute_type
  zone         = var.gcp_zone

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-stream-8"
    }
  }

  network_interface {
    network = "default"
    access_config {}
}

}