terraform {
  source = "../../Main"  
}


#this variable must be change according to project requirment
inputs = {

  admin = "stagingadmin "  
  RG-Name = "staging-rg-postgresql"
  resource_group_name = "staging-rg-webapp"
  postgresqlname = "staging-db"
  azurerm_service_plan_name = "staging-webapp-plan"
  azurerm_linux_web_app_name = "staging-webapp"
  azurerm_service_plan-sku_name = "B3"
  resource_group_location = "Central US"
}



