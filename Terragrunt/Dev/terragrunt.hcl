terraform {
  source = "../../Main"
}


#this variable must be change according to project requirment
inputs = {
 
  admin = "devadmin"  
  RG-Name = "dev-rg-postgresql"
  resource_group_name = "dev-rg-webapp"
  postgresqlname = "dev-db123"
  azurerm_service_plan_name = "dev-webapp-plan"
  azurerm_linux_web_app_name = "dev-webapp"
  azurerm_service_plan-sku_name = "B3"
  resource_group_location = "Central US"
  key_vault_secret_permissions = ["Get", "List", "Set", "Delete", "Recover"]
}
