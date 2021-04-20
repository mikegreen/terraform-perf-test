terraform {
  required_version = "> 0.13"
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "greenacreslimited"

    workspaces {
      name = "terraform-perf-test"
    }
  }
}
