module "vnet" {
  source                   = "./modules/network/vnet"
  resouresource_group_name = var.resource_group_name
  location                 = var.location
  vnet_name                = var.vnet_name
  subnet_name              = var.subnet_name
  vnet_address_space       = var.vnet_address_space
  subnet_address_prefixes  = var.subnet_address_prefixes
  
}
module "virtual_machine" {
  source                   = "./modules/virtual_machine"
  resouresource_group_name = var.resource_group_name
  location                 = var.location
  vm_name                  = var.vm_name
  nic_name                 = var.nic_name
  vm_size                  = var.vm_size
  subnet_id                = module.vnet.subnet_id
  vm_password              = var.vm_password
}

