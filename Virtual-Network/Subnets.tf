resource "azurerm_subnet" "Pub-Sub" {
  name                 = var.azurerm_subnet-pub-sub-name
  resource_group_name  = var.azurerm_resource_group-name
  address_prefixes     = var.azurerm_subnet-pub-sub-address_prefixes
  virtual_network_name = azurerm_virtual_network.mainnetwork.name
 
}

resource "azurerm_subnet" "Pvt-Sub" {
  name                 = var.azurerm_subnet-pvt-sub-name
  resource_group_name  = var.azurerm_resource_group-name
  address_prefixes     = var.azurerm_subnet-pvt-sub-address_prefixes
  virtual_network_name = azurerm_virtual_network.mainnetwork.name
 
}