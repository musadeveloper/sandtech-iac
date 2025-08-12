resource "azurerm_postgresql_flexible_server" "db" {
  name                = var.postgresql_server_name
  resource_group_name = var.resource_group_name
  location            = var.location
  version             = var.postgresql_version

  delegated_subnet_id = var.private_subnet_id

  administrator_login          = var.admin_username
  administrator_password = var.admin_password

  sku_name                    = var.sku_name
  storage_mb                  = var.storage_mb
  backup_retention_days       = var.backup_retention_days
  high_availability {
  mode = var.high_availability_mode
  }
  zone                        = var.zone

  tags = var.tags
}
