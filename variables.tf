variable "input" {
  type = object({
    vault-address = string
  })
  default = {
    // Execute this against a single cluster
    vault-address = "http://127.0.0.1:8200"
  }
}