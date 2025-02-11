terraform {
  required_version = "~> 1.5"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~>6.20.0"
    }
  }
}

provider "google" {
  region  = "europe-west1"
  zone    = "europe-west1-c"
  project = "itp-hogent-tech-days-2025"
}