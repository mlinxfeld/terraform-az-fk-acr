// examples/03_private_acr_with_aks_and_private_endpoint/aks.tf

module "aks" {
  source = "github.com/mlinxfeld/terraform-az-fk-aks"

  name                = var.aks_name
  location            = azurerm_resource_group.foggykitchen_rg.location
  resource_group_name = azurerm_resource_group.foggykitchen_rg.name

  vnet_id              = module.vnet.vnet_id
  subnet_id            = module.vnet.subnet_ids["fk-subnet-aks"]
  network_plugin       = var.network_plugin
  default_node_count   = var.default_node_count
  default_node_vm_size = var.default_node_vm_size

  tags = var.tags
}
