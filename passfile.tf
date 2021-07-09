# tf test to pass a large file into a module
data "local_file" "sample_text" {
  filename = "./1mb.txt"
}

data "local_file" "sample_text_3" {
  filename = "./3mb.txt"
}

data "local_file" "sample_text_99" {
  filename = "./99mb.txt"
}
