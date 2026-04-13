// examples/03_private_acr_with_aks_and_private_endpoint/acr.tf

module "acr" {
  source = "github.com/mlinxfeld/terraform-az-fk-acr"

  # ACR names must be globally unique, 5-50 chars, lowercase letters and numbers only.
  acr_name            = "${var.name_prefix}${random_string.suffix.result}"
  resource_group_name = azurerm_resource_group.foggykitchen_rg.name
  location            = azurerm_resource_group.foggykitchen_rg.location

  sku                           = var.acr_sku
  admin_enabled                 = false
  public_network_access_enabled = false

  tags = var.tags
}
