terraform {
  required_version = ">= 0.13"
}

resource "azurerm_app_service_plan" "asp" {
  name                = var.asp_name
  location            = var.asp_location
  resource_group_name = var.rg_name
  kind                = var.asp_kind
  reserved            = true

  sku {
    tier = var.asp_tier
    size = var.asp_size
  }
}
