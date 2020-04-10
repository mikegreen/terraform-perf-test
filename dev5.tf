provider "vault" {
  address   = var.input.vault-address
  namespace = "dev5"
  alias     = "dev5"
}

module "dev5" {
  source       = "./modules/dev/"
  zone         = "dev5"
  dependencies = ["${vault_generic_endpoint.plugin_utoken.id}"]
  providers = {
    vault.zone = vault.dev5
    vault.root = vault.root
    null       = null
  }
}