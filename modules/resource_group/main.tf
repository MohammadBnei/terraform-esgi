terraform {
  required_version = ">= 0.13"
}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.rg_location
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "vnec" {
  name                = var.db_name
  resource_group_name = var.rg_name
  location            = var.rg_location
  address_space       = ["10.0.0.0/16"]
}