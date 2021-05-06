provider "vault" {
  namespace = "dev5"
  alias     = "dev5"
}

module "dev5" {
  source = "./modules/dev/"
  zone   = "dev5"
  providers = {
    vault.zone = vault.dev5
    vault.root = vault.root
    null       = null
  }
  # testFile = data.local_file.sample_text.content

}
