variable "RG-Name" {
  description = "Name of the resource group"
}

variable "RG-location" {
  description = "Location for the resource group"
}

variable "postgresqlname" {
  description = "Name of the PostgreSQL server"
}

variable "postgresql-version" {
  description = "Version of PostgreSQL"
}

variable "admin" {
  description = "Administrator username for PostgreSQL"
}

variable "storage_mb" {
  description = "Storage size in MB for PostgreSQL"
}

variable "firewall-name" {
  description = "Name of the firewall rule"
}

variable "start-ip" {
  description = "Start IP address for firewall rule"
}

variable "end-ip" {
  description = "End IP address for firewall rule"
}

variable "keyvault-name" {
  description = "rumit"
}

variable "sku_name" {
  description = "SKU name for Azure resources"
}

variable "key_vault_secret_permissions" {
  description = "Permissions for Key Vault secrets"
  type        = list(string)
}

variable "secret-name" {
  description = "Name of the Key Vault secret"
}
variable "db_password" {
  default = "Thismustbenotuse@runtime"
}