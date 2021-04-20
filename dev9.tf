provider "vault" {
  address   = var.input.vault-address
  namespace = "dev9"
  alias     = "dev9"
}

module "dev9" {
  source = "./modules/dev/"
  zone   = "dev9"
  providers = {
    vault.zone = vault.dev9
    vault.root = vault.root
    null       = null
  }
}