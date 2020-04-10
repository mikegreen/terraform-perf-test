provider "vault" {
  address   = var.input.vault-address
  namespace = "dev4"
  alias     = "dev4"
}

module "dev4" {
  source       = "./modules/dev/"
  zone         = "dev4"
  providers = {
    vault.zone = vault.dev4
    vault.root = vault.root
    null       = null
  }
}
