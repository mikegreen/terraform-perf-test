provider "vault" {
  address   = var.input.vault-address
  namespace = "dev7"
  alias     = "dev7"
}

module "dev7" {
  source = "./modules/dev/"
  zone   = "dev7"
  providers = {
    vault.zone = vault.dev7
    vault.root = vault.root
    null       = null
  }
}