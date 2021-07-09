# provider "random" {
# }

# provider "null" {
# }

resource "random_pet" "server" {
  keepers = {
    testFile = var.testFile
    # testFile3mb = var.testFile3mb
  }
}

data "null_data_source" "values" {
  inputs = {
    test1 = random_pet.server.keepers.testFile
    # test2 = random_pet.server.keepers.testFile3mb
  }
}
