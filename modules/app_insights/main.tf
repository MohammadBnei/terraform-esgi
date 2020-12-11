terraform {
  required_version = ">= 0.13"
}

resource "azurerm_application_insights" "ain" {
  name                = var.ain_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  application_type    = var.ain_type
}