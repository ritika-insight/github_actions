variable "environment" {}

variable "location" {}

variable "resource_group_name" {}

variable "vnet_name" {}

variable "subnet_name" {}

variable "ordinal" {}

variable "vnet_address_space" {
  type = list(string)
}

variable "subnet_address_prefixes" {
  type = list(string)
}

variable "virtual_machines" {
  type = map(object({
    vm_name           = string
    nic_name          = string
    vm_size           = string
    image_offer       = string
    image_publisher   = string
    image_sku         = string
    image_version     = string
    managed_disk_type = string
    admin_username    = string
    admin_password    = string
    compute_name      = string
    })
  )
  description = "Map of virtual machines to be created."
}