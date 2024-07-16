# Virtual Network Outputs
output "Vnet-name" {
  value = azurerm_virtual_network.demo-vnet.name
}

output "Vnet-id" {
  value = azurerm_virtual_network.demo-vnet.id
}


# AKS Cluster Subnet Output
output "ClusterSubnet-id" {
  value = azurerm_subnet.aks-cluster-subnet.id
}

# Public AKS Cluster Subnet Output
output "Public-ClusterSubnet-id" {
  value = azurerm_subnet.public-aks-cluster-subnet.id
}