terraform {
  source = "../../Main"  # Path to the directory containing your modules
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


# locals {
#   postgresql_vars = {
#     postgresql_version = "12"
#     storage_mb         = 32768
#     admin              = "production_admin"
#  #   resource_group     = "Production-RG"
    
#     # Add any other specific variables for PostgreSQL in production
#   }

#   inputs = {
 
#   admin = local.postgresql_vars["rumitparmar"] 

 
# }
# }