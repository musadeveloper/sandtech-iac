output "resource_group_name" {
  description = "The name of the resource group"
  value       = module.rg.resource_group_name
}

output "vnet_id" {
  description = "The ID of the virtual network"
  value       = module.vnet.vnet_id
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = module.vnet.public_subnet_id
}

output "private_subnet_id" {
  description = "The ID of the private subnet"
  value       = module.vnet.private_subnet_id
}

output "keyvault_name" {
  description = "The name of the Azure Key Vault"
  value       = module.keyvault.keyvault_name
}

output "postgresql_server_name" {
  description = "The PostgreSQL server name"
  value       = module.postgresql.postgresql_server_name
}

output "loadbalancer_id" {
  description = "The ID of the load balancer"
  value       = module.loadbalancer.loadbalancer_id
}
