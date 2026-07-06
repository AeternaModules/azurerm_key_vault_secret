output "key_vault_secrets" {
  description = "All key_vault_secret resources"
  value       = azurerm_key_vault_secret.key_vault_secrets
  sensitive   = true
}
output "key_vault_secrets_content_type" {
  description = "List of content_type values across all key_vault_secrets"
  value       = [for k, v in azurerm_key_vault_secret.key_vault_secrets : v.content_type]
}
output "key_vault_secrets_expiration_date" {
  description = "List of expiration_date values across all key_vault_secrets"
  value       = [for k, v in azurerm_key_vault_secret.key_vault_secrets : v.expiration_date]
}
output "key_vault_secrets_key_vault_id" {
  description = "List of key_vault_id values across all key_vault_secrets"
  value       = [for k, v in azurerm_key_vault_secret.key_vault_secrets : v.key_vault_id]
}
output "key_vault_secrets_name" {
  description = "List of name values across all key_vault_secrets"
  value       = [for k, v in azurerm_key_vault_secret.key_vault_secrets : v.name]
}
output "key_vault_secrets_not_before_date" {
  description = "List of not_before_date values across all key_vault_secrets"
  value       = [for k, v in azurerm_key_vault_secret.key_vault_secrets : v.not_before_date]
}
output "key_vault_secrets_resource_id" {
  description = "List of resource_id values across all key_vault_secrets"
  value       = [for k, v in azurerm_key_vault_secret.key_vault_secrets : v.resource_id]
}
output "key_vault_secrets_resource_versionless_id" {
  description = "List of resource_versionless_id values across all key_vault_secrets"
  value       = [for k, v in azurerm_key_vault_secret.key_vault_secrets : v.resource_versionless_id]
}
output "key_vault_secrets_tags" {
  description = "List of tags values across all key_vault_secrets"
  value       = [for k, v in azurerm_key_vault_secret.key_vault_secrets : v.tags]
}
output "key_vault_secrets_value" {
  description = "List of value values across all key_vault_secrets"
  value       = [for k, v in azurerm_key_vault_secret.key_vault_secrets : v.value]
  sensitive   = true
}
output "key_vault_secrets_value_wo" {
  description = "List of value_wo values across all key_vault_secrets"
  value       = [for k, v in azurerm_key_vault_secret.key_vault_secrets : v.value_wo]
}
output "key_vault_secrets_value_wo_version" {
  description = "List of value_wo_version values across all key_vault_secrets"
  value       = [for k, v in azurerm_key_vault_secret.key_vault_secrets : v.value_wo_version]
}
output "key_vault_secrets_version" {
  description = "List of version values across all key_vault_secrets"
  value       = [for k, v in azurerm_key_vault_secret.key_vault_secrets : v.version]
}
output "key_vault_secrets_versionless_id" {
  description = "List of versionless_id values across all key_vault_secrets"
  value       = [for k, v in azurerm_key_vault_secret.key_vault_secrets : v.versionless_id]
}

