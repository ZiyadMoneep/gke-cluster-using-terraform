provider "google" {
  region = "us-west2"
  # zone        = var.zone
}

resource "random_integer" "int" {
  min = 100
  max = 1000000
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.19.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
  }
}
