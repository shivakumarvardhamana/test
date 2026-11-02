
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

provider "google" {
  project = "project-7b1ae16d-2c66-4448-837"
  region  = "asia-south1"
}

resource "google_storage_bucket" "demo" {
  name          = "github-wif-terraform-demo-2026"
  location      = "ASIA-SOUTH1"
  force_destroy = true

  uniform_bucket_level_access = true
}
