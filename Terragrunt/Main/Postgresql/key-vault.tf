


# resource "azurerm_key_vault" "keyvault" {
#   name                        = var.keyvault-name
#   resource_group_name         = var.RG-Name
#   location                    = var.RG-location
#   enabled_for_disk_encryption = true
#   tenant_id                   = data.azurerm_client_config.current.tenant_id
#   sku_name                    = var.sku_name
# depends_on = [ azurerm_resource_group.project-RG ]
#   access_policy {
#     tenant_id          = data.azurerm_client_config.current.tenant_id
#     object_id          = data.azurerm_client_config.current.object_id
#     secret_permissions = var.key_vault_secret_permissions
#   }
# }

# resource "azurerm_key_vault_secret" "db-password" {
#   name         = var.secret-name
#   value        = random_password.db_password.result
#   key_vault_id = azurerm_key_vault.keyvault.id
#   depends_on = [ azurerm_resource_group.project-RG ]
# }
