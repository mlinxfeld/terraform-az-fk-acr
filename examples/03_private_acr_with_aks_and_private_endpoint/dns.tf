// examples/03_private_acr_with_aks_and_private_endpoint/dns.tf

module "private_dns" {
  source = "github.com/mlinxfeld/terraform-az-fk-private-dns"

  resource_group_name    = azurerm_resource_group.foggykitchen_rg.name
  private_dns_zone_names = ["privatelink.azurecr.io"]
  tags                   = var.tags

  vnet_links = {
    acr_dns_link = {
      vnet_id              = module.vnet.vnet_id
      registration_enabled = false
    }
  }
}
