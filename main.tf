locals {
  resource_group_name = "${var.environment}-${var.location}-test-${var.resource_group_name}-${var.ordinal}"
}

module "vnet" {
  source                  = "./modules/network/vnet"
  resource_group_name     = local.resource_group_name
  location                = var.location
  vnet_name               = "${var.environment}-${var.location}-${var.vnet_name}-${var.ordinal}"
  subnet_name             = "${var.environment}-${var.location}-${var.subnet_name}-${var.ordinal}"
  vnet_address_space      = var.vnet_address_space
  subnet_address_prefixes = var.subnet_address_prefixes
}

module "virtual_machine" {
  source              = "./modules/virtual_machine"
  resource_group_name = local.resource_group_name
  location            = var.location
  for_each            = var.virtual_machines
  vm_name             = "${var.environment}-${var.location}-${each.value.vm_name}-${var.ordinal}"
  nic_name            = "${var.environment}-${var.location}-${each.value.nic_name}-${var.ordinal}"
  vm_size             = each.value.vm_size
  subnet_id           = module.vnet.subnet_id
  image_offer         = each.value.image_offer
  image_publisher     = each.value.image_publisher
  image_sku           = each.value.image_sku
  image_version       = each.value.image_version
  managed_disk_type   = each.value.managed_disk_type
  compute_name        = each.value.compute_name
  admin_username      = each.value.admin_username
  admin_password      = each.value.admin_password
}

