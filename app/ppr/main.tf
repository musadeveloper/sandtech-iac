provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {}

module "rg" {
  source              = "../../modules/rg"
  name                = var.resource_group_name
  location            = var.location
}

module "vnet" {
  source = "../../modules/vnet"

  resource_group_name   = module.rg.resource_group_name
  location              = var.location

  vnet_name             = var.vnet_name
  vnet_address_space    = var.vnet_address_space

  public_subnet_name    = var.public_subnet_name
  public_subnet_cidr    = var.public_subnet_cidr

  private_subnet_name   = var.private_subnet_name
  private_subnet_cidr   = var.private_subnet_cidr
}

module "keyvault" {
  source              = "../../modules/keyvault"
  resource_group_name = module.rg.resource_group_name
  location            = var.location
  keyvault_name       = var.keyvault_name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  object_id           = data.azurerm_client_config.current.object_id
  tags                = var.tags
}

data "azurerm_key_vault" "main" {
  name                = module.keyvault.keyvault_name
  resource_group_name = module.rg.resource_group_name
}

data "azurerm_key_vault_secret" "admin_username" {
  name         = "dbAdminUsername"
  key_vault_id = data.azurerm_key_vault.main.id
}

data "azurerm_key_vault_secret" "admin_password" {
  name         = "dbAdminPassword"
  key_vault_id = data.azurerm_key_vault.main.id
}

module "nsg" {
  source              = "../../modules/nsg"
  resource_group_name = module.rg.resource_group_name
  location            = var.location
  private_subnet_nsg_name = var.private_subnet_nsg_name
  public_subnet_nsg_name  = var.public_subnet_nsg_name
  lb_nsg_name             = var.lb_nsg_name
  backend_service_cidr    = var.backend_service_cidr
}

module "loadbalancer" {
  source              = "../../modules/load_balancer"
  resource_group_name = module.rg.resource_group_name
  location            = var.location
  subnet_id           = module.vnet.public_subnet_id
  lb_name             = var.lb_name
  frontend_ip_name    = var.frontend_ip_name
}

module "postgresql" {
  source                = "../../modules/postgresql"
  resource_group_name   = module.rg.resource_group_name
  location              = var.location
  postgresql_server_name = var.postgresql_server_name
  postgresql_version     = var.postgresql_version
  private_subnet_id      = module.vnet.private_subnet_id
  admin_username        = data.azurerm_key_vault_secret.admin_username.value
  admin_password        = data.azurerm_key_vault_secret.admin_password.value
  sku_name              = var.sku_name
  storage_mb            = var.storage_mb
  backup_retention_days = var.backup_retention_days
  high_availability_mode = var.high_availability_mode
  zone                  = var.zone
  tags                  = var.tags
}
