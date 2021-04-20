provider "vault" {
  namespace = "dev1"
  alias     = "dev1"
}

module "dev1" {
  source = "./modules/dev/"
  zone   = "dev1a"
  providers = {
    vault.zone = vault.dev1
    vault.root = vault.root
    null       = null
  }
}
