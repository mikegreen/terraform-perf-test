# provider "random" {
# }

# provider "null" {
# }

resource "random_pet" "server" {
  keepers = {
    testFile     = var.testFile
    testFile99mb = var.testFile99
  }
}

data "null_data_source" "values" {
  inputs = {
    test1 = random_pet.server.keepers.testFile
    test2 = random_pet.server.keepers.testFile
  }
}
