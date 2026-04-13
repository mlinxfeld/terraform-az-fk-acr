// examples/03_private_acr_with_aks_and_private_endpoint/outputs.tf

output "acr_id" {
  description = "Azure Container Registry resource ID."
  value       = module.acr.acr_id
}

output "acr_name" {
  description = "Azure Container Registry name."
  value       = module.acr.acr_name
}

output "acr_login_server" {
  description = "Azure Container Registry login server."
  value       = module.acr.acr_login_server
}

output "aks_cluster_id" {
  description = "AKS cluster resource ID."
  value       = module.aks.cluster_id
}

output "aks_cluster_name" {
  description = "AKS cluster name."
  value       = module.aks.cluster_name
}

output "aks_kubelet_object_id" {
  description = "AKS kubelet identity object ID."
  value       = module.aks.kubelet_object_id
}

output "private_endpoint_id" {
  description = "Private Endpoint resource ID."
  value       = module.private_endpoint_acr.private_endpoint_id
}

output "acr_private_endpoint_ip" {
  description = "Private IP address assigned to the ACR Private Endpoint."
  value       = length(module.private_endpoint_acr.private_ip_addresses) > 0 ? module.private_endpoint_acr.private_ip_addresses[0] : null
}

output "private_dns_zone_id" {
  description = "Private DNS Zone ID for privatelink.azurecr.io."
  value       = module.private_dns.private_dns_zone_ids["privatelink.azurecr.io"]
}

output "role_assignment_id" {
  description = "RBAC role assignment ID for AcrPull on the ACR scope."
  value       = module.rbac.role_assignment_id
}
