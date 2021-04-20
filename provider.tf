terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "~> 2.0"
    }
    null = {
      version = "~> 2.1"
    }
  }
}

provider "vault" {
  // address = var.vault_address
  // token     = var.vault_token
  namespace = ""
  alias     = "root"
}

provider "null" {
}
