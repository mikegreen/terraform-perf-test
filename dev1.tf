module "dev1" {
  source      = "./modules/dev/"
  testFile    = data.local_file.sample_text.content
  testFile3mb = data.local_file.sample_text_3.content
}

module "dev2" {
  source      = "./modules/dev/"
  testFile    = data.local_file.sample_text.content
  testFile3mb = data.local_file.sample_text_3.content
}

module "dev3" {
  source       = "./modules/dev/"
  testFile     = data.local_file.sample_text.content
  testFile3mb  = data.local_file.sample_text_3.content
  testFile99mb = data.local_file.sample_text_99.content
}
