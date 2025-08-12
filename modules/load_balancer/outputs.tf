output "loadbalancer_id" {
  description = "The ID of the load balancer"
  value       = azurerm_lb.this.id
}

output "frontend_ip_id" {
  value = azurerm_lb.this.frontend_ip_configuration[0].id
}