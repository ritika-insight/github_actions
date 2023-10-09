variable "environment" {}

variable "vm_password" {}

variable "vnet_name" {
  default = ""
}

variable "location" {
  default = ""
}

variable "resource_group_name" {
  default = ""
}

variable "vnet_address_space" {
  type = list(string)
  default = ""
}

variable "subnet_address_prefixes" {
  type = list(string)
  default = ""
}

variable "subnet_name" {
  default = ""
}

variable "nic_name" {
  default = ""
}

variable "vm_name" {
  default = ""
}

variable "vm_size" {
  default = ""
}

variable "ordinal" {
  default = ""
}

variable "image_offer" {
  default = ""
}

variable "image_publisher" {
  default = ""
}

variable "image_sku" {
  default = ""
}

variable "image_version" {
  default = ""
}

variable "managed_disk_type" {
  default = ""
}




