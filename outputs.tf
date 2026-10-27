output "service_principal_passwords_id" {
  description = "Map of id values across all service_principal_passwords, keyed the same as var.service_principal_passwords"
  value       = { for k, v in azuread_service_principal_password.service_principal_passwords : k => v.id }
}
output "service_principal_passwords_display_name" {
  description = "Map of display_name values across all service_principal_passwords, keyed the same as var.service_principal_passwords"
  value       = { for k, v in azuread_service_principal_password.service_principal_passwords : k => v.display_name }
}
output "service_principal_passwords_end_date" {
  description = "Map of end_date values across all service_principal_passwords, keyed the same as var.service_principal_passwords"
  value       = { for k, v in azuread_service_principal_password.service_principal_passwords : k => v.end_date }
}
output "service_principal_passwords_end_date_relative" {
  description = "Map of end_date_relative values across all service_principal_passwords, keyed the same as var.service_principal_passwords"
  value       = { for k, v in azuread_service_principal_password.service_principal_passwords : k => v.end_date_relative }
}
output "service_principal_passwords_key_id" {
  description = "Map of key_id values across all service_principal_passwords, keyed the same as var.service_principal_passwords"
  value       = { for k, v in azuread_service_principal_password.service_principal_passwords : k => v.key_id }
}
output "service_principal_passwords_rotate_when_changed" {
  description = "Map of rotate_when_changed values across all service_principal_passwords, keyed the same as var.service_principal_passwords"
  value       = { for k, v in azuread_service_principal_password.service_principal_passwords : k => v.rotate_when_changed }
}
output "service_principal_passwords_service_principal_id" {
  description = "Map of service_principal_id values across all service_principal_passwords, keyed the same as var.service_principal_passwords"
  value       = { for k, v in azuread_service_principal_password.service_principal_passwords : k => v.service_principal_id }
}
output "service_principal_passwords_start_date" {
  description = "Map of start_date values across all service_principal_passwords, keyed the same as var.service_principal_passwords"
  value       = { for k, v in azuread_service_principal_password.service_principal_passwords : k => v.start_date }
}
output "service_principal_passwords_value" {
  description = "Map of value values across all service_principal_passwords, keyed the same as var.service_principal_passwords"
  value       = { for k, v in azuread_service_principal_password.service_principal_passwords : k => v.value }
  sensitive   = true
}

