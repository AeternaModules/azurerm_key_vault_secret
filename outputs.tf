output "key_vault_secrets_id" {
  description = "Map of id values across all key_vault_secrets, keyed the same as var.key_vault_secrets"
  value       = { for k, v in azurerm_key_vault_secret.key_vault_secrets : k => v.id }
}
output "key_vault_secrets_content_type" {
  description = "Map of content_type values across all key_vault_secrets, keyed the same as var.key_vault_secrets"
  value       = { for k, v in azurerm_key_vault_secret.key_vault_secrets : k => v.content_type }
}
output "key_vault_secrets_expiration_date" {
  description = "Map of expiration_date values across all key_vault_secrets, keyed the same as var.key_vault_secrets"
  value       = { for k, v in azurerm_key_vault_secret.key_vault_secrets : k => v.expiration_date }
}
output "key_vault_secrets_key_vault_id" {
  description = "Map of key_vault_id values across all key_vault_secrets, keyed the same as var.key_vault_secrets"
  value       = { for k, v in azurerm_key_vault_secret.key_vault_secrets : k => v.key_vault_id }
}
output "key_vault_secrets_name" {
  description = "Map of name values across all key_vault_secrets, keyed the same as var.key_vault_secrets"
  value       = { for k, v in azurerm_key_vault_secret.key_vault_secrets : k => v.name }
}
output "key_vault_secrets_not_before_date" {
  description = "Map of not_before_date values across all key_vault_secrets, keyed the same as var.key_vault_secrets"
  value       = { for k, v in azurerm_key_vault_secret.key_vault_secrets : k => v.not_before_date }
}
output "key_vault_secrets_resource_id" {
  description = "Map of resource_id values across all key_vault_secrets, keyed the same as var.key_vault_secrets"
  value       = { for k, v in azurerm_key_vault_secret.key_vault_secrets : k => v.resource_id }
}
output "key_vault_secrets_resource_versionless_id" {
  description = "Map of resource_versionless_id values across all key_vault_secrets, keyed the same as var.key_vault_secrets"
  value       = { for k, v in azurerm_key_vault_secret.key_vault_secrets : k => v.resource_versionless_id }
}
output "key_vault_secrets_tags" {
  description = "Map of tags values across all key_vault_secrets, keyed the same as var.key_vault_secrets"
  value       = { for k, v in azurerm_key_vault_secret.key_vault_secrets : k => v.tags }
}
output "key_vault_secrets_value" {
  description = "Map of value values across all key_vault_secrets, keyed the same as var.key_vault_secrets"
  value       = { for k, v in azurerm_key_vault_secret.key_vault_secrets : k => v.value }
  sensitive   = true
}
output "key_vault_secrets_value_wo" {
  description = "Map of value_wo values across all key_vault_secrets, keyed the same as var.key_vault_secrets"
  value       = { for k, v in azurerm_key_vault_secret.key_vault_secrets : k => v.value_wo }
}
output "key_vault_secrets_value_wo_version" {
  description = "Map of value_wo_version values across all key_vault_secrets, keyed the same as var.key_vault_secrets"
  value       = { for k, v in azurerm_key_vault_secret.key_vault_secrets : k => v.value_wo_version }
}
output "key_vault_secrets_version" {
  description = "Map of version values across all key_vault_secrets, keyed the same as var.key_vault_secrets"
  value       = { for k, v in azurerm_key_vault_secret.key_vault_secrets : k => v.version }
}
output "key_vault_secrets_versionless_id" {
  description = "Map of versionless_id values across all key_vault_secrets, keyed the same as var.key_vault_secrets"
  value       = { for k, v in azurerm_key_vault_secret.key_vault_secrets : k => v.versionless_id }
}

