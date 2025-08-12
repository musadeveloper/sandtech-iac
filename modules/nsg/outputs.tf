output "public_subnet_nsg_id" {
  description = "NSG ID for public subnet"
  value       = azurerm_network_security_group.public_subnet.id
}

output "private_subnet_nsg_id" {
  description = "NSG ID for private subnet"
  value       = azurerm_network_security_group.private_subnet.id
}

output "lb_nsg_id" {
  description = "NSG ID for load balancer"
  value       = azurerm_network_security_group.lb.id
}