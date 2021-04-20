provider "vault" {
  version   = "~> 2.9.0"
  address   = var.input.vault-address
  namespace = ""
  alias     = "root"
}

provider "null" {
  version = "~> 2.1"
}
