terraform {
  required_version = ">= 0.13"
}

resource "azurerm_mysql_database" "adb" {
  name                = var.adb_name
  resource_group_name = var.rg_location
  server_name         = var.rg_location
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}