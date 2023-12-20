variable "azurerm_resource_group-name" {
  default = "Vnet-RG"
}

variable "azurerm_resource_group-location" {
  default = "East US"
}

variable "azurerm_virtual_network-name" {
  default = "Project-Vnet"
}

variable "azurerm_virtual_network-address_space" {
  default = ["10.0.0.0/16"]
}

variable "azurerm_subnet-pub-sub-name" {
  default = "Public-Subnet"
}

variable "azurerm_subnet-pub-sub-address_prefixes" {
  default = ["10.0.1.0/24"]
}
variable "virtual_network_name" {
  default = "mainnetwork"
}

variable "azurerm_subnet-pvt-sub-name" {
  default = "Private-Subnet"
}

variable "azurerm_subnet-pvt-sub-address_prefixes" {
  default = ["10.0.2.0/24"]
}

variable "Pub-NSG-name" {
  default = "Public-NSG"
}
variable "Pvt-NSG-name" {
  default = "Private-NSG"
}

variable "public-ip-name" {
  default = "demo-publicip"
}
variable "Pub-VM-name" {
  default = "Public-VM"
}
variable "Pvt-VM-name" {
  default = "Private-VM"
}

variable "ubuntu_image" {
  description = "Ubuntu image details"
  default = {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts-gen2"
    version   = "latest"
  }
}

variable "admin_username" {
  description = "Admin username for the OS profile"
  default     = "testadmin"
}

variable "admin_password" {
  description = "Admin password for the OS profile"
  default     = "Password1234!"
  sensitive   = true
}

variable "private_VM-name" {
  default = "Private-VM"
}
