module "ResourceGroup" {
  source      = "./rg"
  RG-name     = var.rg-name
  RG-location = var.rg-location
}

module "Network" {
  source                = "./network"
  Vnet-name             = var.vnet-name
  Vnet-address          = var.vnet-address
  ClusterSubnet-name    = var.subnet-cluster-name
  ClusterSubnet-address = var.subnet-cluster-address
  Public-ClusterSubnet-name = var.subnet-public-cluster-name
  Public-ClusterSubnet-address = var.subnet-public-cluster-address

  RG-name     = module.ResourceGroup.RG-name
  RG-location = module.ResourceGroup.RG-location
}

module "ACR" {
  source   = "./ACR"
  ACR-name = var.acr-name
  ACR-sku  = var.acr-sku

  RG-name         = module.ResourceGroup.RG-name
  RG-location     = module.ResourceGroup.RG-location
  AKS-identity-id = module.AKS.AKS-identity-id
  PublicAKS-identity-id = module.PublicAKS.PublicAKS-identity-id
}

module "AKS" {
  source      = "./PrivateAKS"
  K8s-version = var.K8s-version
  K8s-name    = var.K8s-name
  Node-RG     = var.K8s-Node-RG
  K8s-sku     = var.K8s-sku

  AgentPool-name           = var.AgentPool-name
  AgentPool-Node-Count     = var.AgentPool-Node-Count
  AgentPool-Node-Min-Count = var.AgentPool-Node-Min-Count
  AgentPool-Node-Max-Count = var.AgentPool-Node-Max-Count
  AgentPool-Pods-Node      = var.AgentPool-Pods-Node
  AgentPool-OS-sku         = var.AgentPool-OS-sku
  AgentPool-OS-disk-type   = var.AgentPool-OS-disk-type
  AgentPool-OS-disk-size   = var.AgentPool-OS-disk-size
  AgentPool-VMsize         = var.AgentPool-VMsize

  UserPool-name           = var.UserPool-name
  UserPool-VMsize         = var.UserPool-VMsize
  UserPool-Node-Count     = var.UserPool-Node-Count
  UserPool-Node-Min-Count = var.UserPool-Node-Min-Count
  UserPool-Node-Max-Count = var.UserPool-Node-Max-Count
  UserPool-OS-sku         = var.UserPool-OS-sku
  UserPool-OS-disk-type   = var.UserPool-OS-disk-type
  UserPool-OS-disk-size   = var.UserPool-OS-disk-size
  UserPool-Pods-Node      = var.UserPool-Pods-Node

  RG-name     = module.ResourceGroup.RG-name
  RG-location = module.ResourceGroup.RG-location

  ClusterSubnet-id = module.Network.ClusterSubnet-id
}

module "PublicAKS" {
  source      = "./PublicAKS"
  Public-K8s-version = var.Public-K8s-version
  Public-K8s-name    = var.Public-K8s-name
  Public-Node-RG     = var.Public-K8s-Node-RG
  Public-K8s-sku     = var.Public-K8s-sku

  Public-AgentPool-name           = var.Public-AgentPool-name
  Public-AgentPool-Node-Count     = var.Public-AgentPool-Node-Count
  Public-AgentPool-Node-Min-Count = var.Public-AgentPool-Node-Min-Count
  Public-AgentPool-Node-Max-Count = var.Public-AgentPool-Node-Max-Count
  Public-AgentPool-Pods-Node      = var.Public-AgentPool-Pods-Node
  Public-AgentPool-OS-sku         = var.Public-AgentPool-OS-sku
  Public-AgentPool-OS-disk-type   = var.Public-AgentPool-OS-disk-type
  Public-AgentPool-OS-disk-size   = var.Public-AgentPool-OS-disk-size
  Public-AgentPool-VMsize         = var.Public-AgentPool-VMsize

  Public-UserPool-name           = var.Public-UserPool-name
  Public-UserPool-VMsize         = var.Public-UserPool-VMsize
  Public-UserPool-Node-Count     = var.Public-UserPool-Node-Count
  Public-UserPool-Node-Min-Count = var.Public-UserPool-Node-Min-Count
  Public-UserPool-Node-Max-Count = var.Public-UserPool-Node-Max-Count
  Public-UserPool-OS-sku         = var.Public-UserPool-OS-sku
  Public-UserPool-OS-disk-type   = var.Public-UserPool-OS-disk-type
  Public-UserPool-OS-disk-size   = var.Public-UserPool-OS-disk-size
  Public-UserPool-Pods-Node      = var.Public-UserPool-Pods-Node

  RG-name     = module.ResourceGroup.RG-name
  RG-location = module.ResourceGroup.RG-location

  PublicClusterSubnet-id = module.Network.Public-ClusterSubnet-id
}
