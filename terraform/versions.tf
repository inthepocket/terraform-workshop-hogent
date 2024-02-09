terraform {
  required_version = "~> 1.5"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~>5.0"
    }
  }
}

provider "google" {
  region  = "europe-west1"
  zone    = "europe-west1-b"
  project = "itp-hogent-tech-days"
}