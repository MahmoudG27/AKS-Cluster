resource "azurerm_subnet" "aks-cluster-subnet" {
  name                 = var.ClusterSubnet-name
  resource_group_name  = var.RG-name
  virtual_network_name = azurerm_virtual_network.demo-vnet.name
  address_prefixes     = [ var.ClusterSubnet-address ]
}

resource "azurerm_subnet" "public-aks-cluster-subnet" {
  name                 = var.Public-ClusterSubnet-name
  resource_group_name  = var.RG-name
  virtual_network_name = azurerm_virtual_network.demo-vnet.name
  address_prefixes     = [ var.Public-ClusterSubnet-address ]
}