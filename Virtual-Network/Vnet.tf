resource "azurerm_virtual_network" "mainnetwork" {
  name                = var.azurerm_virtual_network-name
  location            = var.azurerm_resource_group-location
  resource_group_name = var.azurerm_resource_group-name
  address_space       = var.azurerm_virtual_network-address_space
  
}
