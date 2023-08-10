resource "azurerm_resource_group" "resource_group" {
  name     = "rg-adl-osr-new"
  location = "japaneast"
  tags = {
    CreaterName = "Phannaphon Phonloedkasemsuk"
    UserName    = "Siwanat Ponkhun"
    UserEmail   = "siwanato@ais.co.th"
  }
}
