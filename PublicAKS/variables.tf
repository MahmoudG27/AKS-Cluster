variable "RG-name" {}
variable "RG-location" {}

variable "PublicClusterSubnet-id" {}

################################

# kubernetes Cluster
variable "Public-K8s-version" {
  type    = string
  default = "1.27.7"
}

variable "Public-K8s-name" {
  type    = string
  default = "publicAKS"
}

variable "Public-Node-RG" {
  type    = string
  default = "publicAKS-Cluster"
}

variable "Public-K8s-sku" {
  type    = string
  default = "Standard"
}

# Agent Pool
variable "Public-AgentPool-name" {
  type    = string
  default = "agentpool"
}

variable "Public-AgentPool-Node-Count" {
  type    = number
  default = 2
}

variable "Public-AgentPool-Node-Min-Count" {
  type    = number
  default = 2
}

variable "Public-AgentPool-Node-Max-Count" {
  type    = number
  default = 5
}

variable "Public-AgentPool-Pods-Node" {
  type    = number
  default = 110
}

variable "Public-AgentPool-OS-sku" {
  type    = string
  default = "Ubuntu"
}

variable "Public-AgentPool-OS-disk-type" {
  type    = string
  default = "Ephemeral"
}

variable "Public-AgentPool-OS-disk-size" {
  type    = number
  default = 128
}

variable "Public-AgentPool-VMsize" {
  type    = string
  default = "Standard_D8ds_v5"
}



# Public-UserPool
variable "Public-UserPool-name" {
  type    = string
  default = "userpool"
}

variable "Public-UserPool-VMsize" {
  type    = string
  default = "Standard_D8ds_v5"
}

variable "Public-UserPool-Node-Count" {
  type    = number
  default = 2
}

variable "Public-UserPool-Node-Min-Count" {
  type    = number
  default = 2
}

variable "Public-UserPool-Node-Max-Count" {
  type    = number
  default = 5
}

variable "Public-UserPool-OS-sku" {
  type    = string
  default = "Ubuntu"
}

variable "Public-UserPool-OS-disk-type" {
  type    = string
  default = "Ephemeral"
}

variable "Public-UserPool-OS-disk-size" {
  type    = number
  default = 128
}

variable "Public-UserPool-Pods-Node" {
  type    = number
  default = 110
}