# Resource Group Infra
variable "rg-location" {
  type = string
}
variable "rg-name" {
  type = string
}

#####################################

# Virtual Network
variable "vnet-address" {
  type = string
}
variable "vnet-name" {
  type = string
}

#####################################

# Cluster Subnet
variable "subnet-cluster-name" {
  type = string
}
variable "subnet-cluster-address" {
  type = string
}

variable "subnet-public-cluster-name" {
  type = string
}
variable "subnet-public-cluster-address" {
  type = string
}

#####################################

variable "acr-name" {
  type = string
}

variable "acr-sku" {
  type = string
}

#####################################

variable "K8s-version" {
  type = string
}

variable "K8s-name" {
  type = string
}

variable "K8s-Node-RG" {
  type = string
}

variable "K8s-sku" {
  type = string
}

variable "AgentPool-name" {
  type = string
}

variable "AgentPool-Node-Count" {
  type = number
}

variable "AgentPool-Node-Min-Count" {
  type = number
}

variable "AgentPool-Node-Max-Count" {
  type = number
}

variable "AgentPool-Pods-Node" {
  type = number
}

variable "AgentPool-OS-sku" {
  type = string
}

variable "AgentPool-OS-disk-type" {
  type = string
}

variable "AgentPool-OS-disk-size" {
  type = number
}

variable "AgentPool-VMsize" {
  type = string
}

variable "UserPool-name" {
  type = string
}

variable "UserPool-VMsize" {
  type = string
}

variable "UserPool-Node-Count" {
  type = number
}

variable "UserPool-Node-Min-Count" {
  type = number
}

variable "UserPool-Node-Max-Count" {
  type = number
}

variable "UserPool-OS-sku" {
  type = string
}

variable "UserPool-OS-disk-type" {
  type = string
}

variable "UserPool-OS-disk-size" {
  type = number
}

variable "UserPool-Pods-Node" {
  type = number
}


#####################################

variable "Public-K8s-version" {
  type = string
}

variable "Public-K8s-name" {
  type = string
}

variable "Public-K8s-Node-RG" {
  type = string
}

variable "Public-K8s-sku" {
  type = string
}

variable "Public-AgentPool-name" {
  type = string
}

variable "Public-AgentPool-Node-Count" {
  type = number
}

variable "Public-AgentPool-Node-Min-Count" {
  type = number
}

variable "Public-AgentPool-Node-Max-Count" {
  type = number
}

variable "Public-AgentPool-Pods-Node" {
  type = number
}

variable "Public-AgentPool-OS-sku" {
  type = string
}

variable "Public-AgentPool-OS-disk-type" {
  type = string
}

variable "Public-AgentPool-OS-disk-size" {
  type = number
}

variable "Public-AgentPool-VMsize" {
  type = string
}

variable "Public-UserPool-name" {
  type = string
}

variable "Public-UserPool-VMsize" {
  type = string
}

variable "Public-UserPool-Node-Count" {
  type = number
}

variable "Public-UserPool-Node-Min-Count" {
  type = number
}

variable "Public-UserPool-Node-Max-Count" {
  type = number
}

variable "Public-UserPool-OS-sku" {
  type = string
}

variable "Public-UserPool-OS-disk-type" {
  type = string
}

variable "Public-UserPool-OS-disk-size" {
  type = number
}

variable "Public-UserPool-Pods-Node" {
  type = number
}