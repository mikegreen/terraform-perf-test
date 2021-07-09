module "dev1" {
  source = "./modules/dev/"
  zone   = "dev1"
  # providers = {
  #   null       = null

  # }
  testFile     = data.local_file.sample_text.content
  testFile99mb = data.local_file.sample_text_99.content
}
