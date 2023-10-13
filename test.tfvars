environment         = "qt"
location            = "eastus"
ordinal             = "1"
resource_group_name = "rg"

#VNET
vnet_name               = "vnet"
vnet_address_space      = ["10.0.0.0/16"]
subnet_address_prefixes = ["10.0.1.0/24"]
subnet_name             = "subnet"


virtual_machines = {
  "vm-01" = {
    vm_name           = "vm-01"
    nic_name          = "nic"
    image_offer       = "0001-com-ubuntu-server-focal"
    image_sku         = "20_04-lts"
    image_publisher   = "Canonical"
    image_version     = "latest"
    managed_disk_type = "Standard_LRS"
    vm_size           = "Standard_DS1_v2"
    compute_name      = "vm-01"
    admin_username    = "testadmin1"
    admin_password    = "@test@123@azure"
  }
  "vm-02" = {
    vm_name           = "vm-02"
    nic_name          = "nic"
    image_offer       = "0001-com-ubuntu-server-focal"
    image_sku         = "20_04-lts"
    image_publisher   = "Canonical"
    image_version     = "latest"
    managed_disk_type = "Standard_LRS"
    vm_size           = "Standard_DS1_v2"
    compute_name      = "vm-02"
    admin_username    = "testadmin2"
    admin_password    = "@test@123@azure"
  }
}
