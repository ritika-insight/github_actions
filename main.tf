module "vnet" {
  source                   = "./modules/network/vnet"
  resource_group_name      = "${var.environment}-${var.location}-${var.resource_group_name}-${var.ordinal}"
  location                 = "${var.environment}-${var.location}-${var.location}-${var.ordinal}"
  vnet_name                = "${var.environment}-${var.location}-${var.vnet_name}-${var.ordinal}"
  subnet_name              = "${var.environment}-${var.location}-${var.subnet_name}-${var.ordinal}"
  vnet_address_space       = "${var.environment}-${var.location}-${var.vnet_address_space}-${var.ordinal}"
  subnet_address_prefixes  = "${var.environment}-${var.location}-${var.subnet_address_prefixes}-${var.ordinal}"
}


module "virtual_machine" {
  source                   = "./modules/virtual_machine"
  resource_group_name      = "${var.environment}-${var.location}-${var.resource_group_name}-${var.ordinal}"
  location                 = "${var.environment}-${var.location}-${var.location}-${var.ordinal}"
  vm_name                  = "${var.environment}-${var.location}-${var.vm_name}-${var.ordinal}"
  nic_name                 = "${var.environment}-${var.location}-${var.nic_name}-${var.ordinal}"
  vm_size                  = "${var.environment}-${var.location}-${var.vm_size}-${var.ordinal}"
  subnet_id                = module.vnet.subnet_id
  vm_password              = "${var.environment}-${var.location}-${var.vm_password}-${var.ordinal}"
  image_offer              = "${var.environment}-${var.location}-${var.image_offer}-${var.ordinal}"
  image_publisher          = "${var.environment}-${var.location}-${var.image_publisher}-${var.ordinal}"
  image_sku                = "${var.environment}-${var.location}-${var.image_sku}-${var.ordinal}"
  image_version            = "${var.environment}-${var.location}-${var.image_version}-${var.ordinal}"
  managed_disk_type        = "${var.environment}-${var.location}-${var.managed_disk_type}-${var.ordinal}"
}

