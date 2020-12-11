terraform {
  required_version = ">= 0.13"
}

resource "azure_sql_database_server" "asdserver" {
  name                = var.asdserver_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  username            = var.asdserver_username
  password            = var.asdserver_password

  sku_name            = "GP_Gen5_2"
  storage_mb          = 5120
  version             = var.asdserver_version

  auto_grow_enabled                 = true
  backup_retention_days             = 7
  geo_redundant_backup_enabled      = true
  infrastructure_encryption_enabled = false
  public_network_access_enabled     = false
  ssl_enforcement_enabled           = true
  ssl_minimal_tls_version_enforced  = "TLS1_2"
}