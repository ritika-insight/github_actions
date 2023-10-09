variable "environment" {}

variable "vm_password" {}

variable "vnet_name" {}

variable "location" {}

variable "resource_group_name" {}

variable "vnet_address_space" {
  type = list(string)
  }

variable "subnet_address_prefixes" {
  type = list(string)
  }

variable "subnet_name" {}

variable "nic_name" {}

variable "vm_name" {}

variable "vm_size" {}

variable "ordinal" {}

variable "image_offer" {}

variable "image_publisher" {}

variable "image_sku" {}

variable "image_version" {}

variable "managed_disk_type" {}




