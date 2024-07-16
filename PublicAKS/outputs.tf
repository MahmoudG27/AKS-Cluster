# K8S Identity id
output "PublicAKS-identity-id" {
  value = azurerm_kubernetes_cluster.publicdemo-aks.kubelet_identity[0].object_id
}