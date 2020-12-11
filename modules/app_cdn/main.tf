terraform {
  required_version = ">= 0.13"
}

resource "azurerm_cdn_profile" "acdnp" {
  name                = var.acdnp_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  sku                 = var.acdnp_sku
}

resource "azurerm_cdn_endpoint" "acdne" {
  name                = var.acdne_name
  profile_name        = azurerm_cdn_profile.example.name
  location            = var.rg_location
  resource_group_name = avar.rg_name

  origin {
    name      = var.acdne_origin
    host_name = var.acdne_host_name
  }
}