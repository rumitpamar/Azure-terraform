

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

# resource "azurerm_container_registry" "acr" {
#   name                = "democontainerregistery37"
#   resource_group_name = var.resource_group_name
#   location            = var.resource_group_location
#   sku                 = var.ACR-sku
#   admin_enabled       = true

# }

resource "azurerm_service_plan" "example" {
  name                = var.azurerm_service_plan_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  os_type             = var.azurerm_service_plan-os_type
  sku_name            = var.azurerm_service_plan-sku_name
  #reserved            = true
  depends_on = [ azurerm_resource_group.rg ]
}

resource "azurerm_linux_web_app" "web" {
  name                = var.azurerm_linux_web_app_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  service_plan_id     = azurerm_service_plan.example.id

depends_on = [ azurerm_resource_group.rg ]



  # app_settings = {
  #   DOCKER_REGISTRY_SERVER_URL          = azurerm_container_registry.acr.login_server
  #   DOCKER_REGISTRY_SERVER_USERNAME     = azurerm_container_registry.acr.admin_username
  #   DOCKER_REGISTRY_SERVER_PASSWORD     = azurerm_container_registry.acr.admin_password
  #   WEBSITES_ENABLE_APP_SERVICE_STORAGE = "false"
  #   DOCKER_CUSTOM_IMAGE_NAME            = "${azurerm_container_registry.acr.login_server}/nginx:latest"
  # }

  site_config {
    always_on = true
  }

  identity {
    type = "SystemAssigned"
  }
}