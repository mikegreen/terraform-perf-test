# tf test to pass a large file into a module
data "local_file" "sample_text" {
  filename = "./1mb.txt"
}
