variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "location" {
  type        = string
  description = "Azure location"
}

variable "keyvault_name" {
  type        = string
  description = "Name of the Key Vault"
}

variable "tenant_id" {
  type        = string
  description = "Azure tenant ID"
}

variable "object_id" {
  type        = string
  description = "Object ID of the principal (user or service principal) to assign access policy"
}

variable "tags" {
  type        = map(string)
  description = "Tags for the Key Vault"
  default     = {}
}