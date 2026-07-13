variable "key_vault_secrets" {
  description = <<EOT
Map of key_vault_secrets, attributes below
Required:
    - key_vault_id
    - name
Optional:
    - content_type
    - expiration_date
    - not_before_date
    - tags
    - value
    - value_key_vault_id (alternative to value - read from Key Vault instead)
    - value_key_vault_secret_name (alternative to value - read from Key Vault instead)
    - value_wo
    - value_wo_version
EOT

  type = map(object({
    key_vault_id                = string
    name                        = string
    content_type                = optional(string)
    expiration_date             = optional(string)
    not_before_date             = optional(string)
    tags                        = optional(map(string))
    value                       = optional(string)
    value_key_vault_id          = optional(string)
    value_key_vault_secret_name = optional(string)
    value_wo                    = optional(string)
    value_wo_version            = optional(number)
  }))
  validation {
    condition = alltrue([
      for k, v in var.key_vault_secrets : (
        length(v.name) <= 127
      )
    ])
    error_message = "[from keyvault.ValidateNestedItemName: invalid when len(value) > 127]"
  }
  validation {
    condition = alltrue([
      for k, v in var.key_vault_secrets : (
        v.value_wo_version == null || (v.value_wo_version >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
  # Note: 10 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

