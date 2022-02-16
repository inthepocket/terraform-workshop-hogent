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
