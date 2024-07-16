variable "RG-name" {}
variable "RG-location" {}

variable "AKS-identity-id" {}
variable "PublicAKS-identity-id" {}

################################

variable "ACR-name" {
  type    = string
  default = "ACRmgDemo"
}

variable "ACR-sku" {
  type    = string
  default = "Premium"
}