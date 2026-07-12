data "azurerm_key_vault_secret" "value" {
  for_each     = { for k, v in var.key_vault_secrets : k => v if v.value_key_vault_id != null && v.value_key_vault_secret_name != null }
  name         = each.value.value_key_vault_secret_name
  key_vault_id = each.value.value_key_vault_id
}
resource "azurerm_key_vault_secret" "key_vault_secrets" {
  for_each = var.key_vault_secrets

  key_vault_id     = each.value.key_vault_id
  name             = each.value.name
  content_type     = each.value.content_type
  expiration_date  = each.value.expiration_date
  not_before_date  = each.value.not_before_date
  tags             = each.value.tags
  value            = each.value.value != null ? each.value.value : try(data.azurerm_key_vault_secret.value[each.key].value, null)
  value_wo         = each.value.value_wo
  value_wo_version = each.value.value_wo_version
}

