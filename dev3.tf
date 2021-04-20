provider "vault" {
  namespace = "dev3"
  alias     = "dev3"
}

module "dev3" {
  source = "./modules/dev/"
  zone   = "dev3c"
  providers = {
    vault.zone = vault.dev3
    vault.root = vault.root
    null       = null
  }
}
