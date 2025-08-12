output "postgresql_server_id" {
  description = "Resource ID of the PostgreSQL flexible server"
  value       = azurerm_postgresql_flexible_server.db.id
}

output "postgresql_server_name" {
  description = "Name of the PostgreSQL flexible server"
  value       = azurerm_postgresql_flexible_server.db.name
}

output "fully_qualified_domain_name" {
  description = "FQDN of the PostgreSQL server"
  value       = azurerm_postgresql_flexible_server.db.fqdn
}