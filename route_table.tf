resource "azurerm_route_table" "azfwroutetable" {
  name                          = "adl-common-new-route-table"
  resource_group_name           = "resource_group.name"
  location                      = "japaneast"
  disable_bgp_route_propagation = false

  route = [
    {
      name                   = "AzfwDefaultRoute"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "10.80.1.68"
    }

  ]
}
