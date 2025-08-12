variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "southafricaeast"
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the VNet"
  type        = list(string)
}

variable "public_subnet_name" {
  description = "Name of the public subnet"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "private_subnet_name" {
  description = "Name of the private subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
}

variable "private_subnet_nsg_name" {
  description = "Name of the private subnet NSG"
  type        = string
}

variable "public_subnet_nsg_name" {
  description = "Name of the public subnet NSG"
  type        = string
}

variable "lb_nsg_name" {
  description = "Name of the load balancer NSG"
  type        = string
}

variable "backend_service_cidr" {
  description = "CIDR for backend service"
  type        = string
}

variable "lb_name" {
  description = "Name of the load balancer"
  type        = string
}

variable "frontend_ip_name" {
  description = "Frontend IP configuration name"
  type        = string
}

variable "keyvault_name" {
  description = "Name of the Azure Key Vault"
  type        = string
}

variable "postgresql_server_name" {
  description = "PostgreSQL server name"
  type        = string
}

variable "postgresql_version" {
  description = "PostgreSQL version"
  type        = string
  default     = "13"
}

variable "sku_name" {
  description = "SKU name for PostgreSQL"
  type        = string
  default     = "GP_Gen5_2"
}

variable "storage_mb" {
  description = "Storage size in MB for PostgreSQL"
  type        = number
  default     = 51200
}

variable "backup_retention_days" {
  description = "Backup retention days for PostgreSQL"
  type        = number
  default     = 7
}

variable "high_availability_mode" {
  description = "High availability mode for PostgreSQL"
  type        = string
  default     = "ZoneRedundant"
}

variable "zone" {
  description = "Availability zone"
  type        = string
  default     = "1"
}

variable "tags" {
  description = "Tags for all resources"
  type        = map(string)
  default     = {
    environment = "dev"
    project     = "sandtech"
  }
}