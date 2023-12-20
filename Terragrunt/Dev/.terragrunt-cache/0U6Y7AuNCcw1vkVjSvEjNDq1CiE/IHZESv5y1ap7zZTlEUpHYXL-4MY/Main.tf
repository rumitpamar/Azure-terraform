provider "azurerm" {
  features {}
}

module "postgresql" {
  source                       = "./Postgresql"
  keyvault-name                = var.keyvault-name
  RG-Name                      = var.RG-Name
  RG-location                  = var.RG-location
  storage_mb                   = var.storage_mb
  admin                        = var.admin
  key_vault_secret_permissions = var.key_vault_secret_permissions
  sku_name                     = var.sku_name
  firewall-name                = var.firewall-name
  postgresqlname               = var.postgresqlname
  secret-name                  = var.secret-name
  postgresql-version           = var.postgresql-version
  start-ip                     = var.start-ip
  end-ip                       = var.end-ip

}



module "web_app" {
  source                        = "./WebApp"
  resource_group_name           = var.resource_group_name
  resource_group_location       = var.resource_group_location
  ACR-sku                       = var.ACR-sku
  azurerm_service_plan_name     = var.azurerm_service_plan_name
  azurerm_service_plan-os_type  = var.azurerm_service_plan-os_type
  azurerm_service_plan-sku_name = var.azurerm_service_plan-sku_name
  azurerm_linux_web_app_name    = var.azurerm_linux_web_app_name

}

