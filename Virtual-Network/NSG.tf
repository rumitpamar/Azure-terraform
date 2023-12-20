# NSG for Public Virtual MAchine/Subnet
# Port Might need to change as per the requirment

resource "azurerm_network_security_group" "Pub-NSG" {
  name                = var.Pub-NSG-name
  location            = var.azurerm_resource_group-location
  resource_group_name = var.azurerm_resource_group-name
   

  security_rule {
    name                       = "Allow-SSH"
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "110.226.124.147"
    destination_address_prefix = "10.0.1.0/24"
  }

  security_rule {
    name                       = "Allow-HTTP"
    priority                   = 102
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "10.0.1.0/24"
  }

  security_rule {
    name                       = "Allow-HTTPS"
    priority                   = 103
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "10.0.1.0/24"
  }
}


##############################################################################################################

# Uncomment this Block if the NSG is rewuired to Associate with Subnet Instead of Virtual Machine


# resource "azurerm_subnet_network_security_group_association" "Pub-NSG" {
#   subnet_id                 = azurerm_subnet.Pub-Sub.id
#   network_security_group_id = azurerm_network_security_group.Public-Ip.id
# }

##############################################################################################################


# Associate NSG with Public Virtual Machine
resource "azurerm_network_interface_security_group_association" "Public-Ip" {
  network_interface_id      = azurerm_network_interface.main.id
  network_security_group_id = azurerm_network_security_group.Pub-NSG.id
}




# NSG For Private Subnet/Virtual Machine
resource "azurerm_public_ip" "Public-Ip" {
  name                = var.public-ip-name
  location            = var.azurerm_resource_group-location
  resource_group_name = var.azurerm_resource_group-name
  allocation_method   = "Dynamic"
}

data "azurerm_public_ip" "public_ip" {
  name                = azurerm_network_interface.main.ip_configuration[0].public_ip_address_id  # Assuming the public IP address ID is stored here
  resource_group_name = var.azurerm_resource_group-name
}

resource "azurerm_network_security_group" "Pvt-NSG" {
  name                = var.Pvt-NSG-name
  location            = var.azurerm_resource_group-location
  resource_group_name = var.azurerm_resource_group-name

  security_rule {
    name                       = "Allow-SSH"
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "${data.azurerm_public_ip.public_ip.ip_address}/32"  # Use the IP address retrieved from the public IP resource
    destination_address_prefix = "10.0.1.0/24"
  }
}
