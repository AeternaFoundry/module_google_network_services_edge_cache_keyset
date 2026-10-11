resource "google_network_services_edge_cache_keyset" "network_services_edge_cache_keysets" {
  for_each = var.network_services_edge_cache_keysets

  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  labels          = each.value.labels
  project         = each.value.project

  dynamic "public_key" {
    for_each = each.value.public_key != null ? each.value.public_key : []
    content {
      id      = public_key.value.id
      managed = public_key.value.managed
      value   = public_key.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "validation_shared_keys" {
    for_each = each.value.validation_shared_keys != null ? each.value.validation_shared_keys : []
    content {
      secret_version = validation_shared_keys.value.secret_version
    }
  }
}

