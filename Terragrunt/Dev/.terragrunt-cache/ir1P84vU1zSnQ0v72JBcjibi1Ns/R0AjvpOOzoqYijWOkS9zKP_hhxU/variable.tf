variable "keyvault-name" {
  description = "Name of the Azure Key Vault"
  default     = "rumit123"

}

variable "RG-Name" {
  description = "Name of the resource group"
  default     = "demo-rg"

}

variable "RG-location" {
  description = "Location for the resource group"

  default = "East US "
}

variable "sku_name" {
  description = "SKU name for Azure resources"
  default     = "standard"

}

variable "key_vault_secret_permissions" {
  description = "Permissions for Key Vault secrets"
  type        = list(string)
  default     = ["Get", "List", "Set", "Delete", "Recover"]

}

variable "secret-name" {
  description = "Name of the Key Vault secret"
  default     = "Database-Name"

}

variable "resource_group_name" {
  default     = "Project-RG-12"
  description = "Name of the resource group for web app"

}

variable "resource_group_location" {
  default     = "East US"
  description = "Location for the resource group of web app"

}

variable "ACR-sku" {
  description = "SKU for Azure Container Registry"

  default = "Standard"
}

variable "azurerm_service_plan_name" {
  description = "Name for the Azure service plan"
  default     = "Project-Service-plan"

}

variable "azurerm_service_plan-os_type" {
  default     = "Linux"
  description = "Operating system type for Azure service plan"

}

variable "azurerm_service_plan-sku_name" {
  description = "SKU name for Azure service plan"
  default     = "B2"

}

variable "azurerm_linux_web_app_name" {
  description = "Name for the Azure Linux web app"
  default     = "Project-Web-App"

}

variable "storage_mb" {
  description = "Storage size in MB for PostgreSQL"
  type        = number
  default     = "32768"
}

variable "admin" {
  description = "Administrator username for PostgreSQL"
  type        = string
  default     = "rumit"
}
variable "firewall-name" {
  description = "Name of the firewall rule"
  type        = string
  default     = "project-psql-firewall"
}
variable "postgresqlname" {
  description = "Name of the PostgreSQL server"
  type        = string
  default     = "project-postgresql"
}
variable "postgresql_version" {
  description = "Version of PostgreSQL"
  type        = string
  default     = "12"
}
variable "start-ip" {
  description = "Start IP address for firewall rule"
  type        = string
  default     = "110.226.124.147"
}
variable "postgresql-version" {
  description = "Version of PostgreSQL"
  type        = string
  default     = "12" 
}
variable "end-ip" {
  description = "End IP address for firewall rule"
  type        = string
  default     = "110.226.124.147"
}
