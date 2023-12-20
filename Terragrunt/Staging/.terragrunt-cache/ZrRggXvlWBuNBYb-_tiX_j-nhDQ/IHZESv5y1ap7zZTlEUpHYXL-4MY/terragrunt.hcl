terraform {
  source = "../../Main"  # Path to the directory containing your modules
}

  inputs = {
 
  admin = "rumitparmar1"  
 RG-Name = "staging-rg-postgresql"
resource_group_name = "staging-rg-webapp"
postgresqlname = "stagingdb1"
azurerm_service_plan_name = "stagingwebapp-plan"
azurerm_linux_web_app_name = "staging-webapp"
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
 
#   admin = local.postgresql_vars["admin"]  
 
# }
# }