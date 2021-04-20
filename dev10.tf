provider "vault" {
  address   = var.input.vault-address
  namespace = "dev10"
  alias     = "dev10"
}

module "dev10" {
  source = "./modules/dev/"
  zone   = "dev10"
  providers = {
    vault.zone = vault.dev10
    vault.root = vault.root
    null       = null
  }
}