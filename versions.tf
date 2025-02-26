terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~>6.0"
    }
  }
}

provider "google" {
  region  = "europe-west1"
  zone    = "europe-west1-c"
  project = "itp-vives-demo"
}