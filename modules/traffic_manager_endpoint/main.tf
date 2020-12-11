terraform {
  required_version = ">= 0.13"
}

resource "azurerm_traffic_manager_endpoint" "tme" {
  name                = var.tme_name
  resource_group_name = var.rg_name
  profile_name        = var.tmp_name
  endpoint_status     = var.tme_estat
  type                = var.tme_type
  target_resource_id  = var.tme_rid
  weight              = var.tme_weight
  priority            = var.tme_prio
}
