terraform {
  required_providers {
    null = {
      version = "~> 2.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "random" {
  # Configuration options
}

provider "null" {
}
