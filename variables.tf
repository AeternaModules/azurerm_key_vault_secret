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
        v.value_wo_version == null || (v.value_wo_version >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_key_vault_secret's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from keyvault.ValidateNestedItemName] !ok
  # path: name
  #   condition: length(value) <= 127
  #   message:   [from keyvault.ValidateNestedItemName: invalid when len(value) > 127]
  #   source:    [from keyvault.ValidateNestedItemName: invalid when len(value) > 127]
  # path: name
  #   source:    [from keyvault.ValidateNestedItemName] !regexp.MustCompile(`^[0-9a-zA-Z-]+$`).MatchString(v.(string))
  # path: not_before_date
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: expiration_date
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: tags
  #   source:    [from tags.ValidateWithMaximumElements] len(tagsMap) > max
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.ValidateWithMaximumElements: invalid when len(value) > 512]
  #   source:    [from tags.ValidateWithMaximumElements: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.ValidateWithMaximumElements] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.ValidateWithMaximumElements: invalid when len(value) > 256]
  #   source:    [from tags.ValidateWithMaximumElements: invalid when len(value) > 256]
}

