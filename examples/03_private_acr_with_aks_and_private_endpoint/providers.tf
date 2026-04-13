// examples/03_private_acr_with_aks_and_private_endpoint/providers.tf

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.6.0"
    }
    time = {
      source  = "hashicorp/time"
      version = ">= 0.13.0"
    }
  }
}

provider "azurerm" {
  features {}
}
