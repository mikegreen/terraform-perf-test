terraform {
  required_version = "~> 0.12.20"
  backend "local" {
    path = "terraform.tfstate"
  }
}
