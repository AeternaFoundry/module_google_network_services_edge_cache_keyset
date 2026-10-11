variable "network_services_edge_cache_keysets" {
  description = <<EOT
Map of network_services_edge_cache_keysets, attributes below
Required:
    - name
Optional:
    - deletion_policy
    - description
    - labels
    - project
    - public_key (block):
        - id (required)
        - managed (optional)
        - value (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - validation_shared_keys (block):
        - secret_version (required)
EOT

  type = map(object({
    name            = string
    deletion_policy = optional(string)
    description     = optional(string)
    labels          = optional(map(string))
    project         = optional(string)
    public_key = optional(list(object({
      id      = string
      managed = optional(bool)
      value   = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    validation_shared_keys = optional(list(object({
      secret_version = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.network_services_edge_cache_keysets : (
        v.public_key == null || (length(v.public_key) <= 3)
      )
    ])
    error_message = "Each public_key list must contain at most 3 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.network_services_edge_cache_keysets : (
        v.validation_shared_keys == null || (length(v.validation_shared_keys) <= 3)
      )
    ])
    error_message = "Each validation_shared_keys list must contain at most 3 items"
  }
}

