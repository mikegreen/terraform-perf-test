variable "zone" {
  type = string
}

variable "dependencies" {
  type    = list(string)
  default = []
}

variable "testFile" {
  type    = string
  default = "foo"
}
