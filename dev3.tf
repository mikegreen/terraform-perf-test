provider "vault" {
  address   = var.input.vault-address
  namespace = "dev3"
  alias     = "dev3"
}

module "dev3" {
  source       = "./modules/dev/"
  zone         = "dev3"
  dependencies = ["${vault_generic_endpoint.plugin_utoken.id}"]
  providers = {
    vault.zone = vault.dev3
    vault.root = vault.root
    null       = null
  }
}
