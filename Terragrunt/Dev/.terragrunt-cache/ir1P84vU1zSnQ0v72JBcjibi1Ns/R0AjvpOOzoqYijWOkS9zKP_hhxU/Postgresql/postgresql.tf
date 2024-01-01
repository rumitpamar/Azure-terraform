provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "project-RG" {
  name     = var.RG-Name
  location = var.RG-location
}

resource "random_password" "db_password" {
  length           = 20
  special          = true
  override_special = "!@#$%^&*()_-+={}[]|:;<>?,."
}

resource "azurerm_postgresql_flexible_server" "project-RG" {
  name                   = var.postgresqlname
  resource_group_name    = azurerm_resource_group.project-RG.name
  location               = azurerm_resource_group.project-RG.location
  version                = var.postgresql-version
  administrator_login    = var.admin
  administrator_password = random_password.db_password.result    
  # administrator_password = var.db_password
  storage_mb = var.storage_mb

  sku_name = "GP_Standard_D4s_v3"
lifecycle {
      ignore_changes = [
        zone,
        high_availability.0.standby_availability_zone
      ]
  }
}

resource "azurerm_postgresql_flexible_server_firewall_rule" "project-RG" {
  name             = var.firewall-name
  server_id        = azurerm_postgresql_flexible_server.project-RG.id
  start_ip_address = var.start-ip
  end_ip_address   = var.end-ip
}
