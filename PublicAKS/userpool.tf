resource "azurerm_kubernetes_cluster_node_pool" "userpool" {
  name                  = var.Public-UserPool-name
  kubernetes_cluster_id = azurerm_kubernetes_cluster.publicdemo-aks.id
  vm_size               = var.Public-UserPool-VMsize
  mode                  = "User"
  zones                 = ["1", "2", "3"]
  enable_auto_scaling   = true
  max_count             = var.Public-UserPool-Node-Max-Count
  min_count             = var.Public-UserPool-Node-Min-Count
  node_count            = var.Public-UserPool-Node-Count
  max_pods              = var.Public-UserPool-Pods-Node
  os_disk_size_gb       = var.Public-UserPool-OS-disk-size
  os_disk_type          = var.Public-UserPool-OS-disk-type
  os_sku                = var.Public-UserPool-OS-sku
  kubelet_disk_type     = "OS"
  # orchestrator_version          = "1.27.7"
  vnet_subnet_id = var.PublicClusterSubnet-id
}