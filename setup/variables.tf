#====================================================
# RESOURCE GROUP
#====================================================
variable "rg_name" {
  type        = string
  description = "Resource Group name"
}

variable "rg_location" {
  type        = string
  default     = "West Europe"
  description = "Resource Group location"
}
#====================================================
# APP SERVICE PLAN
#====================================================
variable "asp_name" {
  type        = string
  description = "App Service Plan name"
}
variable "asp_location" {
  type        = string
  description = "App Service Plan location"
}
variable "asp_kind" {
  type        = string
  description = "App Service Plan kind"
}
variable "asp_tier" {
  type        = string
  description = "App Service Plan sku tier"
}
variable "asp_size" {
  type        = string
  description = "App Service Plan ski size"
}
#====================================================
# APP SERVICE
#====================================================
variable "ase_name" {
  type        = string
  description = "App Service name"
}
variable "ase_mysql" {
  type        = bool
  description = "MySQL In App"
}
variable "asp_id" {
  type        = string
  description = "App Service Plan id"
  default     = ""
}
variable "ain_key" {
  type        = string
  description = "Application Insights instrumentation key"
  default     = ""
}
variable "ain_conn" {
  type        = string
  description = "Application Insights connection string"
  default     = ""
}
#====================================================
# APPLICATION INSIGHTS
#====================================================
variable "ain_name" {
  type        = string
  description = "Application Insights name"
}
variable "ain_type" {
  type        = string
  description = "Application Insights application type"
}
#====================================================
# TRAFFIC MANAGER PROFILE
#====================================================
variable "tmp_name" {
  type        = string
  description = "Traffic Manager Profile name"
}
variable "tmp_rtn" {
  type        = string
  description = "Traffic Manager Profil routing method"
}
variable "dns_rlt" {
  type        = string
  description = "The relative domain name"
}
variable "dns_ttl" {
  type        = number
  description = "The TTL value of the Profile used by Local DNS"
}
variable "mnt_ptc" {
  type        = string
  description = "The protocol used by the monitoring checks"
}
variable "mnt_prt" {
  type        = number
  description = "The port number used by the monitoring checks"
}
variable "mnt_pth" {
  type        = string
  description = "The path used by the monitoring checks"
}
variable "mnt_int" {
  type        = number
  description = "The interval used to check the endpoint health from a Traffic Manager probing agent"
}
variable "mnt_tis" {
  type        = number
  description = "The amount of time the Traffic Manager probing agent should wait before considering that check a failure when a health check probe is sent to the endpoint"
}
variable "mnt_tnof" {
  type        = number
  description = "The number of failures a Traffic Manager probing agent tolerates before marking that endpoint as unhealthy"
}
#====================================================
# TRAFFIC MANAGER ENDPOINT
#====================================================
variable "tme_name" {
  type        = string
  description = "Traffic Manager Endpoint name"
}
variable "tme_estat" {
  type        = string
  description = "Endpoint status"
}
variable "tme_type" {
  type        = string
  description = "Traffic Manager Endpoint type"
}
variable "tme_rid" {
  type        = string
  description = "The resource id of an Azure resource to target"
  default     = ""
}
variable "tme_weight" {
  type        = number
  description = "Specifies how much traffic should be distributed to this endpoint"
}
variable "tme_prio" {
  type        = number
  description = "Specifies the priority of this Endpoint"
}
