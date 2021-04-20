provider "vault" {
  address   = var.vault_address
  namespace = "dev6"
  alias     = "dev6"
}

module "dev6" {
  source = "./modules/dev/"
  zone   = "dev6"
  providers = {
    vault.zone = vault.dev6
    vault.root = vault.root
    null       = null
  }
}