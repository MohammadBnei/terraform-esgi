terraform {
  required_version = ">= 0.13"
}

resource "azurerm_traffic_manager_profile" "tmp" {
  name                = var.tmp_name
  resource_group_name = var.rg_name

  traffic_routing_method = var.tmp_rtn

  dns_config {
    relative_name = var.dns_rlt
    ttl           = var.dns_ttl
  }

  monitor_config {
    protocol                     = var.mnt_ptc
    port                         = var.mnt_prt
    path                         = var.mnt_pth
    interval_in_seconds          = var.mnt_int
    timeout_in_seconds           = var.mnt_tis
    tolerated_number_of_failures = var.mnt_tnof
  }
}