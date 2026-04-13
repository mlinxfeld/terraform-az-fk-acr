// examples/02_aks_with_acr_attach/resource_group.tf

resource "azurerm_resource_group" "foggykitchen_rg" {
  name     = var.resource_group_name
  location = var.location
}
