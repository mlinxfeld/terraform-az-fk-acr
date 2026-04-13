// examples/03_private_acr_with_aks_and_private_endpoint/resource_group.tf

resource "azurerm_resource_group" "foggykitchen_rg" {
  name     = var.resource_group_name
  location = var.location
}
