terraform {
  source = "../../Main"  
}

  inputs = {
 
  admin = "rumitparmar1"  
  RG-Name = "staging-rg-postgresql"
  resource_group_name = "staging-rg-webapp"
  postgresqlname = "stagingdb1"
  azurerm_service_plan_name = "stagingwebapp-plan"
  azurerm_linux_web_app_name = "staging-webapp"
}




