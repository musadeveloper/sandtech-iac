variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "postgresql_server_name" {
  type        = string
  description = "PostgreSQL server name"
}

variable "postgresql_version" {
  type        = string
  default     = "14"
  description = "PostgreSQL version"
}

variable "private_subnet_id" {
  type        = string
  description = "ID of the private subnet for PostgreSQL delegation"
}

variable "admin_username" {
  type        = string
  description = "PostgreSQL admin username"
}

variable "admin_password" {
  type        = string
  sensitive   = true
  description = "PostgreSQL admin password"
}

variable "sku_name" {
  type        = string
  default     = "Standard_D2s_v3"
  description = "SKU for PostgreSQL server"
}

variable "storage_mb" {
  type        = number
  default     = 32768
  description = "Storage size in MB"
}

variable "backup_retention_days" {
  type        = number
  default     = 7
  description = "Backup retention days"
}

variable "high_availability_mode" {
  type        = string
  default     = "Disabled"
  description = "HA mode"
}

variable "zone" {
  type        = string
  default     = "1"
  description = "Availability zone"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags"
}