resource "azurerm_virtual_network" "vnet-rg-adl-osr-new" {
  name                      = "vnet-rg-adl-osr-new"
  resource_group_name       = azurerm_resource_group.resource_group.name
  location                  = azurerm_resource_group.resource_group.location
  address_space             = ["172.28.1.0/24"]
  virtual_network_name      = aazurerm_virtual_network.vnet-rg-adl-osr-new.name
  allow_forwarded_traffic   = true
  remote_virtual_network_id = "/subscriptions/756952db-9653-4f48-bed7-49ea8d2a8ada/resourceGroups/rg-adl-connectivity-hub-jpe-dev"

  tags = {
    CreaterName = "Phannaphon Phonloedkasemsuk"
    UserName    = "Siwanat Ponkhun"
    UserEmail   = "siwanato@ais.co.th"
  }
}
resource "azurerm_subnet" "subnet-new-vm" {
  name                 = "subnet-adl-common-new-vm"
  virtual_network_name = azurerm_virtual_network.vnet-rg-adl-osr-new.name
  resource_group_name  = azurerm_resource_group.resource_group.name
  address_prefixes     = ["172.19.1.0/28"]
}
resource "azurerm_subnet" "subnet-new-storage" {
  name                 = "subnet-adl-common-new-storage"
  virtual_network_name = azurerm_virtual_network.vnet-rg-adl-osr-new.name
  resource_group_name  = azurerm_resource_group.resource_group.name
  address_prefixes     = ["172.19.1.17/28"]
}
