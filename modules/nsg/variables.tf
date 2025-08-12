variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "public_subnet_nsg_name" {
  description = "NSG name for public subnet"
  type        = string
}

variable "private_subnet_nsg_name" {
  description = "NSG name for private subnet"
  type        = string
}

variable "lb_nsg_name" {
  description = "NSG name for load balancer"
  type        = string
}

variable "backend_service_cidr" {
  description = "CIDR/IP range of backend service allowed to access the database"
  type        = string
}
