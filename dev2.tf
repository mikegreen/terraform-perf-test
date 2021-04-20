provider "vault" {
  namespace = "dev2"
  alias     = "dev2"
}

module "dev2" {
  source = "./modules/dev/"
  zone   = "dev2"
  providers = {
    vault.zone = vault.dev2
    vault.root = vault.root
    null       = null
  }
}
