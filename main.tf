# Create a VPC network
resource "google_compute_network" "vpc_network" {
  name                    = "itp-workshop-network-${var.student_number}"
  auto_create_subnetworks = false
  mtu                     = 1460
}

# Create a subnet for the VPC network
resource "google_compute_subnetwork" "subnet" {
  name          = "itp-workshop-subnetwork-${var.student_number}"
  ip_cidr_range = "10.216.${var.student_number}.0/24"
  network       = google_compute_network.vpc_network.id
}

# Firewall to allow http, https and SSH
resource "google_compute_firewall" "default" {
  name    = "itp-workshop-firewall-${var.student_number}"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["webserver"]
}

# Instance resource
resource "google_compute_instance" "webserver" {
  name         = "itp-workshop-webserver-${var.student_number}"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  metadata_startup_script = file("${path.module}/templates/2048.tftpl")

  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link

    access_config {}
  }

  tags = ["webserver"]
}
