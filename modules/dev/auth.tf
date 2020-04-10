resource "vault_jwt_auth_backend" "auth-jwt" {
  depends_on         = [vault_namespace.zone]
  provider           = vault.zone
  path               = "jwt"
  type               = "jwt"
  bound_issuer       = "spiffe://usso.upki.ca"
  jwks_url           = "https://usso.storage.googleapis.com/jwks.json"
  jwt_supported_algs = ["ES256"]
  default_role       = "crane"
  tune {
    default_lease_ttl = "1h"
    max_lease_ttl     = "768h"
    token_type        = "default-batch"
  }
}