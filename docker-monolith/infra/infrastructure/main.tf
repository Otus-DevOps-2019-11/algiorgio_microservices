terraform {
  required_version = ">=0.12.8"
}

provider "google" {
  version = "2.15.0"
  project = var.project
  region  = var.region
}

resource "google_compute_instance" "app" {
  count = var.instance_amount

  name         = "${var.app_name}-${count.index + 1}"
  machine_type = "f1-micro"
  zone         = "${var.zone}"

  tags = [var.app_name]

  boot_disk {
    initialize_params {
      image = var.boot_disk_image
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  metadata = {
    ssh-keys = "appuser:${file(var.public_key_path)}"
  }

  connection {
    type        = "ssh"
    host        = self.network_interface[0].access_config[0].nat_ip
    user        = "appuser"
    agent       = false
    private_key = file(var.private_key_path)
  }
}

resource "google_compute_firewall" "firewall_app" {
  name        = "allow-${var.app_name}"
  network     = "default"
  target_tags = [var.app_name]
  allow {
    protocol = "tcp"
    ports    = ["22", "9292"]
  }
  source_ranges = var.source_ranges
}
