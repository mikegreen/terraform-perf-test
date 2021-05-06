# Every Vault resource needs to reference a provider
# To prevent creation/deletion of the root namespace
provider "vault" {
  alias = "zone"
}

provider "vault" {
  alias = "root"
}

provider "null" {
}

resource "vault_namespace" "zone" {
  provider = vault.root
  path     = var.zone
}

provider "aws" {
  region  = "us-east-1"
  alias   = "east-1"
}

provider "aws" {
  region  = "us-east-2"
  alias   = "east-2"
}


data "aws_region" "current_1" {
  provider = aws.east-1
}


data "aws_region" "current_2" {
  provider = aws.east-2
}
