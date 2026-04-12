variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Azure Resource Group where the registry will be created"
  type        = string
}

variable "location" {
  description = "Azure region where the registry will be created"
  type        = string
}

variable "sku" {
  description = "The SKU of the Azure Container Registry (Basic, Standard, Premium)"
  type        = string
  default     = "Basic"

  validation {
    condition     = contains(["Basic", "Standard", "Premium"], var.sku)
    error_message = "Valid values for sku are Basic, Standard, or Premium."
  }
}

variable "admin_enabled" {
  description = "Enable the admin user for the Azure Container Registry"
  type        = bool
  default     = false
}

variable "public_network_access_enabled" {
  description = "Enable public network access to the Azure Container Registry"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to apply to the Azure Container Registry"
  type        = map(string)
  default     = {}
}
