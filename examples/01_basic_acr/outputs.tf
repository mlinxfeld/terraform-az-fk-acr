// examples/01_basic_acr/outputs.tf

output "acr_name" {
  description = "Azure Container Registry name."
  value       = module.acr.acr_name
}

output "acr_id" {
  description = "Azure Container Registry resource ID."
  value       = module.acr.acr_id
}

output "acr_login_server" {
  description = "Azure Container Registry login server."
  value       = module.acr.acr_login_server
}
