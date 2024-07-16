# K8S Identity id
output "AKS-identity-id" {
  value = azurerm_kubernetes_cluster.demo-aks.kubelet_identity[0].object_id
}