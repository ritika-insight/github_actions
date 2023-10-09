environment = "qt"
location = "eastus"
ordinal = "1"
resource_group_name = "rg"

#VNET
vnet_name = "vnet"
vnet_address_space = ["10.0.0.0/16"]
subnet_address_prefixes = ["10.0.1.0/24"]
subnet_name = "subnet"

#VIRTUAL MACHINE
nic_name = "nic"
vm_name = "vm"
vm_size = "Standard_DS1_v2"
# vm_password =  
# subnet_id = 
image_offer = "0001-com-ubuntu-server-focal"
image_publisher = "Canonical"
image_sku = "20_04-lts"  
image_version = "latest"
managed_disk_type = "Standard_LRS"
