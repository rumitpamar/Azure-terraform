resource "azurerm_network_interface" "private" {
  name                = var.Pvt-VM-name
  location            = var.azurerm_resource_group-location
  resource_group_name = var.azurerm_resource_group-name
depends_on = [ azurerm_resource_group.RG ]
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.Pvt-Sub.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "Private-VM" {
  name                  = var.private_VM-name
  location              = var.azurerm_resource_group-location
  resource_group_name   = var.azurerm_resource_group-name
  network_interface_ids = [azurerm_network_interface.private.id]
  vm_size               = "Standard_DS1_v2"

  storage_image_reference {
    publisher = var.ubuntu_image["publisher"]
    offer     = var.ubuntu_image["offer"]
    sku       = var.ubuntu_image["sku"]
    version   = var.ubuntu_image["version"]
  }

  storage_os_disk {
    name              = "private-osdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "private-hostname"
    admin_username = var.admin_username
    admin_password = var.admin_password
  }
  os_profile_linux_config {
    disable_password_authentication = false # For enhanced security, use SSH keys
  }
  tags = {
    environment = "production"
  }
  
}
