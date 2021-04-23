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

