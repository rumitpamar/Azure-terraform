variable "resource_group_name" {
    default = "Project-RG-12"
}

variable "resource_group_location" {
  default = "East US"
}
variable "ACR-sku" {
  default = "Standard"
}

variable "azurerm_service_plan_name" {
    default = "Project-Service-plan"
}
variable "azurerm_service_plan-os_type" {
  default = "Linux"
}

variable "azurerm_service_plan-sku_name" {
  default = "B1"
}

variable "azurerm_linux_web_app_name" {
  default = "Project-Web-App"
}