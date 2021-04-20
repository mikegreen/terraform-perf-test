resource "vault_jwt_auth_backend" "auth-jwt" {
  provider           = vault.root
  path               = "jwt"
  type               = "jwt"
  bound_issuer       = "spiffe://spiffy.test.xyz"
  jwks_url           = "https://hashicorp.auth0.com/.well-known/jwks.json"
  jwt_supported_algs = ["ES256"]
  default_role       = "vault_via_terraform"
  tune {
    default_lease_ttl = "1h"
    max_lease_ttl     = "24h"
    token_type        = "default-batch"
  }
}
