resource "azurerm_lb" "this" {
  name                = var.lb_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"

  frontend_ip_configuration {
    name                 = var.frontend_ip_name
    subnet_id            = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}
