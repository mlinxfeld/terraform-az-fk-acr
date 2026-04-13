// examples/03_private_acr_with_aks_and_private_endpoint/variables.tf

variable "name_prefix" {
  description = "Prefix for ACR name (lowercase letters and numbers only). Example: fkacr"
  type        = string
  default     = "fkacr"

  validation {
    condition     = can(regex("^[a-z0-9]+$", var.name_prefix)) && length(var.name_prefix) <= 14
    error_message = "name_prefix must be lowercase letters/numbers only and max 14 chars."
  }
}

variable "aks_name" {
  description = "AKS cluster name"
  type        = string
  default     = "fk-aks-private-acr"
}

variable "vnet_name" {
  description = "Virtual network name"
  type        = string
  default     = "fk-aks-private-acr-vnet"
}

variable "resource_group_name" {
  description = "Resource group name for this example"
  type        = string
  default     = "fk-rg"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "westeurope"
}

variable "acr_sku" {
  description = "Azure Container Registry SKU. Premium is required for Private Endpoint."
  type        = string
  default     = "Premium"
}

variable "network_plugin" {
  description = "AKS network plugin"
  type        = string
  default     = "kubenet"
}

variable "default_node_count" {
  description = "Default AKS node count"
  type        = number
  default     = 1
}

variable "default_node_vm_size" {
  description = "Default AKS node VM size"
  type        = string
  default     = "Standard_D2s_v3"
}

variable "tags" {
  description = "Tags to apply."
  type        = map(string)
  default = {
    project = "terraform-az-fk-acr"
    example = "03_private_acr_with_aks_and_private_endpoint"
  }
}
