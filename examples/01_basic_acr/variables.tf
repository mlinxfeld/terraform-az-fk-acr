// examples/01_basic_acr/variables.tf

variable "name_prefix" {
  description = "Prefix for ACR name (lowercase letters and numbers only). Example: fkacr"
  type        = string
  default     = "fkacr"

  validation {
    condition     = can(regex("^[a-z0-9]+$", var.name_prefix)) && length(var.name_prefix) <= 14
    error_message = "name_prefix must be lowercase letters/numbers only and max 14 chars."
  }
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "westeurope"
}

variable "resource_group_name" {
  description = "Resource group name for this example"
  type        = string
  default     = "fk-rg"
}

variable "sku" {
  description = "Azure Container Registry SKU"
  type        = string
  default     = "Basic"
}

variable "admin_enabled" {
  description = "Enable admin user for ACR"
  type        = bool
  default     = false
}

variable "public_network_access_enabled" {
  description = "Enable public network access for ACR"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to apply."
  type        = map(string)
  default = {
    project = "terraform-az-fk-acr"
    example = "01_basic_acr"
  }
}
