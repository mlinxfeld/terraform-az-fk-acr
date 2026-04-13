// examples/03_private_acr_with_aks_and_private_endpoint/private_endpoint.tf

module "private_endpoint_acr" {
  source = "github.com/mlinxfeld/terraform-az-fk-private-endpoint"

  name                = "fk-acr-pe"
  location            = azurerm_resource_group.foggykitchen_rg.location
  resource_group_name = azurerm_resource_group.foggykitchen_rg.name
  subnet_id           = module.vnet.subnet_ids["fk-subnet-private-endpoints"]

  private_connection_resource_id = module.acr.acr_id
  subresource_names              = ["registry"]
  is_manual_connection           = false

  private_dns_zone_group_name = "acr-dns-zone-group"
  private_dns_zone_ids        = [module.private_dns.private_dns_zone_ids["privatelink.azurecr.io"]]

  tags = var.tags
}
