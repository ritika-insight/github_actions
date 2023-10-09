environment = "qt"
location = "eastus"
ordinal = "01"

#VNET
resource_group_name = "rg"
vnet_name = "vnet"
vnet_address_space = ["10.0.0.0/16"]
subnet_address_prefixes = ["10.0.1.0/24"]
subnet_name = "subnet"

#VIRTUAL MACHINE
resource_group_name = "rg"
nic_name = "nic"
vm_name = "vm"
vm_size = "value"
# vm_password =  
# subnet_id = 
image_offer = "0001-com-ubuntu-server-focal"
image_publisher = "Canonicalalue"
image_sku = "20_04-lts"
image_version = "latest"
managed_disk_type = "Standard_LRS"
