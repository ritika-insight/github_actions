variable "vm_password" {}

variable "vnet_name" {
  default = "qt-eastus-test-vnet-1"
}

variable "location" {
  default = "East US"
}

variable "resource_group_name" {
  default = "qt-eastus-test-rg-1"
}

variable "vnet_address_space" {
  type = list(string)
  default = ["10.0.0.0/16"]
}

variable "subnet_address_prefixes" {
  type = list(string)
  default = ["10.0.1.0/24"]
}

variable "subnet_name" {
  default = "qt-eastus-test-subnet-1"
}

variable "nic_name" {
  default = "qt-eastus-test-nic-1"
}

variable "vm_name" {
  default = "qt-eastus-test-vm-1"
}

variable "vm_size" {
  default = "Standard_DS1_v2"
}







