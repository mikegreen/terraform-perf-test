# Every Vault resource needs to reference a provider
# To prevent creation/deletion of the root namespace
provider "vault" {
  alias = "zone"
}

provider "vault" {
  alias = "root"
}

provider "null" {
}

# This is to express that the zone namespace is dependent on the root module's utoken plugin being registered
# https://medium.com/@aniket10051994/inter-module-resource-dependency-in-terraform-9291070133f3
resource "null_resource" "dependency_getter" {
  provisioner "local-exec" {
    command = "echo ${join(",", var.dependencies)}"
  }
}

resource "vault_namespace" "zone" {
  provider   = vault.root
  depends_on = [null_resource.dependency_getter]
  path       = var.zone
}
