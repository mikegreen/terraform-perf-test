variable "dependencies" {
  type    = list(string)
  default = []
}

variable "testFile" {
  type    = string
  default = "foo"
}

variable "testFile3mb" {
  type    = string
  default = "foo"
}

variable "testFile99mb" {
  type    = string
  default = "foo"
}
