terraform {
  source = "../../Main"
}

  inputs = {
 
    admin = "rumitparmar1"  
 RG-Name = "dev-rg-postgresql"
resource_group_name = "dev-rg-webapp"
postgresqlname = "devdb123"
azurerm_service_plan_name = "devwebapp-plan"
azurerm_linux_web_app_name = "dev-webapp"
azurerm_service_plan-sku_name = "B3"
resource_group_location = "Central US"
}
