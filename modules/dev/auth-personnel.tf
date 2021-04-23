# create group auth
locals {
  auth-group-map-temp = {
    for f in fileset("${path.module}/onboarding", "**/*personnel.users") :
    basename(f) => compact(split("\n", file("${path.module}/onboarding/${f}")))
  }

  // A map found by personnel group and personnel
  auth-group-map          = merge(flatten([local.auth-group-map-temp])...)
  auth-distinct-personnel = toset(distinct(flatten(values(local.auth-group-map))))
}

resource "vault_identity_entity" "personnel" {
  provider   = vault.zone
  depends_on = [vault_namespace.zone]
  for_each   = local.auth-distinct-personnel
  //name       = var.testFile
  name = each.value
  metadata = {
    email = each.value
  }
}

resource "vault_identity_entity_alias" "personnel-jwt" {
  provider       = vault.zone
  depends_on     = [vault_namespace.zone]
  for_each       = local.auth-distinct-personnel
  mount_accessor = vault_jwt_auth_backend.auth-jwt.accessor
  canonical_id   = vault_identity_entity.personnel[each.value].id
  name           = each.value
}
