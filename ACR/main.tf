# Azure Container Registry
resource "azurerm_container_registry" "demo-ACR" {
  name                          = var.ACR-name
  resource_group_name           = var.RG-name
  location                      = var.RG-location
  admin_enabled                 = true
  public_network_access_enabled = false
  sku                           = var.ACR-sku
}

resource "azurerm_role_assignment" "Attach-ACR-to-private" {
  principal_id                     = var.AKS-identity-id
  role_definition_name             = "AcrPull"
  scope                            = azurerm_container_registry.demo-ACR.id
  skip_service_principal_aad_check = true
}

resource "azurerm_role_assignment" "Attach-ACR-to-public" {
  principal_id                     = var.PublicAKS-identity-id
  role_definition_name             = "AcrPull"
  scope                            = azurerm_container_registry.demo-ACR.id
  skip_service_principal_aad_check = true
}