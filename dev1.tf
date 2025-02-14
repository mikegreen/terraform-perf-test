provider "vault" {
  namespace = "dev1"
  alias     = "dev1"
}

module "dev1" {
  source = "./modules/dev/"
  zone   = "dev1"
  providers = {
    vault.zone = vault.dev1
    vault.root = vault.root
    null       = null
  }
  testFile = data.local_file.sample_text.content
}
