output "network_services_edge_cache_keysets_id" {
  description = "Map of id values across all network_services_edge_cache_keysets, keyed the same as var.network_services_edge_cache_keysets except keys with no id are omitted"
  value       = { for k, v in google_network_services_edge_cache_keyset.network_services_edge_cache_keysets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_services_edge_cache_keysets_deletion_policy" {
  description = "Map of deletion_policy values across all network_services_edge_cache_keysets, keyed the same as var.network_services_edge_cache_keysets except keys with no deletion_policy are omitted"
  value       = { for k, v in google_network_services_edge_cache_keyset.network_services_edge_cache_keysets : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "network_services_edge_cache_keysets_description" {
  description = "Map of description values across all network_services_edge_cache_keysets, keyed the same as var.network_services_edge_cache_keysets except keys with no description are omitted"
  value       = { for k, v in google_network_services_edge_cache_keyset.network_services_edge_cache_keysets : k => v.description if v.description != null && length(v.description) > 0 }
}
output "network_services_edge_cache_keysets_effective_labels" {
  description = "Map of effective_labels values across all network_services_edge_cache_keysets, keyed the same as var.network_services_edge_cache_keysets except keys with no effective_labels are omitted"
  value       = { for k, v in google_network_services_edge_cache_keyset.network_services_edge_cache_keysets : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "network_services_edge_cache_keysets_labels" {
  description = "Map of labels values across all network_services_edge_cache_keysets, keyed the same as var.network_services_edge_cache_keysets except keys with no labels are omitted"
  value       = { for k, v in google_network_services_edge_cache_keyset.network_services_edge_cache_keysets : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "network_services_edge_cache_keysets_name" {
  description = "Map of name values across all network_services_edge_cache_keysets, keyed the same as var.network_services_edge_cache_keysets except keys with no name are omitted"
  value       = { for k, v in google_network_services_edge_cache_keyset.network_services_edge_cache_keysets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "network_services_edge_cache_keysets_project" {
  description = "Map of project values across all network_services_edge_cache_keysets, keyed the same as var.network_services_edge_cache_keysets except keys with no project are omitted"
  value       = { for k, v in google_network_services_edge_cache_keyset.network_services_edge_cache_keysets : k => v.project if v.project != null && length(v.project) > 0 }
}
output "network_services_edge_cache_keysets_public_key" {
  description = "Map of public_key values across all network_services_edge_cache_keysets, keyed the same as var.network_services_edge_cache_keysets except keys with no public_key are omitted"
  value       = { for k, v in google_network_services_edge_cache_keyset.network_services_edge_cache_keysets : k => v.public_key if v.public_key != null && length(v.public_key) > 0 }
  sensitive   = true
}
output "network_services_edge_cache_keysets_terraform_labels" {
  description = "Map of terraform_labels values across all network_services_edge_cache_keysets, keyed the same as var.network_services_edge_cache_keysets except keys with no terraform_labels are omitted"
  value       = { for k, v in google_network_services_edge_cache_keyset.network_services_edge_cache_keysets : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "network_services_edge_cache_keysets_validation_shared_keys" {
  description = "Map of validation_shared_keys values across all network_services_edge_cache_keysets, keyed the same as var.network_services_edge_cache_keysets except keys with no validation_shared_keys are omitted"
  value       = { for k, v in google_network_services_edge_cache_keyset.network_services_edge_cache_keysets : k => v.validation_shared_keys if v.validation_shared_keys != null && length(v.validation_shared_keys) > 0 }
}

