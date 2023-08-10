resource "azurerm_route_table" "azfwroutetable" {
  name                          = "adl-common-new-route-table"
  resource_group_name           = azurerm_resource_group.resource_group.name
  location                      = azurerm_resource_group.resource_group.location
  disable_bgp_route_propagation = false
  tags = {
    CreaterName = "Phannaphon Phonloedkasemsuk"
    UserName    = "Siwanat Ponkhun"
    UserEmail   = "siwanato@ais.co.th"
  }
  route = [
    {
      name                   = "AzfwDefaultRoute"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.80.1.68"
    }

  ]


}
