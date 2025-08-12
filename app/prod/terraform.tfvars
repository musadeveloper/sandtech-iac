#RG
resource_group_name     = "rg-sandtech-prd"
location                = "southafricaeast"

#VNET
vnet_name             = "vnet-sandtech-prd"
vnet_address_space    = ["10.0.0.0/16"]

public_subnet_name    = "public-subnet"
public_subnet_cidr    = "10.0.1.0/24"

private_subnet_name   = "private-subnet"
private_subnet_cidr   = "10.0.2.0/24"

#LOAD_BALANCER
lb_name             = "lb-sandtech-prd"
frontend_ip_name    = "frontendIP"

#NSG
private_subnet_nsg_name = "nsg-private"
public_subnet_nsg_name  = "nsg-public"
lb_nsg_name             = "nsg-lb"
backend_service_cidr    = "10.0.2.0/24"

#KEYVAULT
keyvault_name           = "kv-sandtech-prd"

#POSTGRESQL
postgresql_server_name  = "pg-sandtech-prd"
