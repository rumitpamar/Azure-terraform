provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "storage_rg" {
  name     = "TerraformStorageRG"
  location = "East US" # Replace with your desired location
}

resource "azurerm_storage_account" "storage_account" {
  name                          = "bharatlawstorage" # Replace with your desired Storage Account name
  resource_group_name           = azurerm_resource_group.storage_rg.name
  location                      = azurerm_resource_group.storage_rg.location
  account_tier                  = "Standard"
  account_replication_type      = "LRS"
  public_network_access_enabled = true
  tags = {
    environment = "TerraformDemo"
    # Add any other tags if needed
  }
}

resource "azurerm_storage_container" "testing_container" {
  name                  = "testing-container"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private" # Adjust access type based on your needs

  depends_on = [azurerm_storage_account.storage_account]
}

resource "azurerm_storage_container" "staging_container" {
  name                  = "staging-container"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private" # Adjust access type based on your needs

  depends_on = [azurerm_storage_account.storage_account]
}

resource "azurerm_storage_container" "production_container" {
  name                  = "production-container"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private" # Adjust access type based on your needs

  depends_on = [azurerm_storage_account.storage_account]
}
