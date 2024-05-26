resource "azurerm_resource_group" "myname" {
  name = "rg-cloud"
  location = "eastus"
}

resource "azurerm_public_ip" "myname" {
  name = "ip-cloud"
  resource_group_name = azurerm_resource_group.myname.name
  location = azurerm_resource_group.myname.location
  allocation_method = "Static"
}