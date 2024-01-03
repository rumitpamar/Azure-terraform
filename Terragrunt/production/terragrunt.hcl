terraform {
  source = "../../Main" 
}



#this variable must be change according to project requirment
inputs = {

  admin = "prodadmin "  
  RG-Name = "prod-rg-postgresql"
  resource_group_name = "prod-rg-webapp"
  postgresqlname = "proddb"
  azurerm_service_plan_name = "prod-webapp-plan"
  azurerm_linux_web_app_name = "prod-webapp"
  azurerm_service_plan-sku_name = "B3"
  resource_group_location = "Central US"
  key_vault_secret_permissions = ["Get", "List", "Set", "Delete", "Recover"]
}
