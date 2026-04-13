// examples/02_aks_with_acr_attach/outputs.tf

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

output "aks_node_resource_group" {
  description = "AKS node resource group."
  value       = module.aks.node_resource_group
}

output "role_assignment_id" {
  description = "RBAC role assignment ID for AcrPull on the ACR scope."
  value       = module.rbac.role_assignment_id
}
