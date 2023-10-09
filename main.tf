module "vnet" {
  source                   = "./modules/network/vnet"
  resource_group_name      = "${var.environment}-${var.location}-test-${var.resource_group_name}-${var.ordinal}"
  location                 = var.location
  vnet_name                = "${var.environment}-${var.location}-${var.vnet_name}-${var.ordinal}"
  subnet_name              = "${var.environment}-${var.location}-${var.subnet_name}-${var.ordinal}"
  vnet_address_space       = var.vnet_address_space
  subnet_address_prefixes  = var.subnet_address_prefixes
}


module "virtual_machine" {
  source                   = "./modules/virtual_machine"
  resource_group_name      = "${var.environment}-${var.location}-test-${var.resource_group_name}-${var.ordinal}"
  location                 = var.location
  vm_name                  = "${var.environment}-${var.location}-${var.vm_name}-${var.ordinal}"
  nic_name                 = "${var.environment}-${var.location}-${var.nic_name}-${var.ordinal}"
  vm_size                  = var.vm_size
  subnet_id                = module.vnet.subnet_id
  vm_password              = var.vm_password
  image_offer              = var.image_offer
  image_publisher          = var.image_publisher
  image_sku                = var.image_sku
  image_version            = var.image_version
  managed_disk_type        = var.managed_disk_type
}

