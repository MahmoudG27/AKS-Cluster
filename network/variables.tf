variable "RG-name" {}
variable "RG-location" {}

################################

# Virtual Network
variable "Vnet-name" {
  type    = string
  default = "MG"
}
variable "Vnet-address" {
  type    = string
  default = "10.224.0.0/12"
}
########################################

# AKS Cluster Subnet
variable "ClusterSubnet-name" {
  type    = string
  default = "cluster"
}
variable "ClusterSubnet-address" {
  type    = string
  default = "10.224.0.0/16"
}

# Public AKS Cluster Subnet
variable "Public-ClusterSubnet-name" {
  type    = string
  default = "Public-cluster"
}
variable "Public-ClusterSubnet-address" {
  type    = string
  default = "10.225.0.0/16"
}