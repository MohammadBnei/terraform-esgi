terraform {
  provider "azurerm" {
    version = "~>2.38"
    features {}
  }

  backend "remote" {
    organization = "mohacorp"

    workspaces {
      name = "gaming4life"
    }
  }
}


provider "azurerm" {
  version = "~>2.38"
  features {}
}

module "gaminglife_resource_group" {
  source  = "../modules/resource_group"
  rg_name = var.rg_name
}

module "gaminglife_app_service_plan" {
  source       = "../modules/app_service_plan"
  asp_name     = var.asp_name
  asp_location = var.asp_location
  asp_kind     = var.asp_kind
  asp_tier     = var.asp_tier
  asp_size     = var.asp_size
  rg_name      = module.gaminglife_resource_group.out.name
}

module "gaminglife_app_insights" {
  source      = "../modules/app_insights"
  ain_name    = var.ain_name
  ain_type    = var.ain_type
  rg_location = module.gaminglife_resource_group.out.location
  rg_name     = module.gaminglife_resource_group.out.name
}

module "gaminglife_app_service" {
  source      = "../modules/app_service"
  ase_name    = var.ase_name
  ase_mysql   = var.ase_mysql
  rg_location = module.gaminglife_resource_group.out.location
  rg_name     = module.gaminglife_resource_group.out.name
  asp_id      = module.gaminglife_app_service_plan.out.id
  ain_key     = module.gaminglife_app_insights.out.instrumentation_key
  ain_conn    = module.gaminglife_app_insights.out.connection_string
}

module "gaminglife_traffic_manager_profile" {
  source   = "../modules/traffic_manager_profile"
  tmp_name = var.tmp_name
  tmp_rtn  = var.tmp_rtn
  dns_rlt  = var.dns_rlt
  dns_ttl  = var.dns_ttl
  mnt_ptc  = var.mnt_ptc
  mnt_prt  = var.mnt_prt
  mnt_pth  = var.mnt_pth
  mnt_int  = var.mnt_int
  mnt_tis  = var.mnt_tis
  mnt_tnof = var.mnt_tnof
  rg_name  = module.gaminglife_resource_group.details.name
}

module "gaminglife_traffic_manager_endpoint" {
  source     = "../modules/traffic_manager_endpoint"
  tme_name   = var.tme_name
  tme_estat  = var.tme_estat
  tme_type   = var.tme_type
  tme_rid    = module.gaminglife_app_service.details.id
  tme_weight = var.tme_weight
  tme_prio   = var.tme_prio
  tmp_name   = module.gaminglife_traffic_manager_profile.details.name
  rg_name    = module.gaminglife_resource_group.details.name
}
