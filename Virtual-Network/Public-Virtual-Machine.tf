

resource "azurerm_network_interface" "main" {
  name                = "demo-nic"
  location            = var.azurerm_resource_group-location
  resource_group_name = var.azurerm_resource_group-name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.Pub-Sub.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.Public-Ip.id
  }
}
resource "azurerm_virtual_machine" "Project-VM" {
  name                  = var.Pub-VM-name
  location              = var.azurerm_resource_group-location
  resource_group_name   = var.azurerm_resource_group-name
  network_interface_ids = [azurerm_network_interface.main.id]
  vm_size               = "Standard_DS1_v2"


  storage_image_reference {
    publisher = var.ubuntu_image["publisher"]
    offer     = var.ubuntu_image["offer"]
    sku       = var.ubuntu_image["sku"]
    version   = var.ubuntu_image["version"]
  }

  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = var.admin_username
    admin_password = var.admin_password
  }
  os_profile_linux_config {
    disable_password_authentication = false # For enhanced security, use SSH keys
  }
  tags = {
    environment = "staging"
  }
  
}
