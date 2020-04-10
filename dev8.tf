provider "vault" {
  address   = var.input.vault-address
  namespace = "dev8"
  alias     = "dev8"
}

module "dev8" {
  source = "./modules/dev/"
  zone   = "dev8"
  providers = {
    vault.zone = vault.dev8
    vault.root = vault.root
    null       = null
  }
}