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
variable "rg_name" {
  type        = string
  description = "Resource Group name"
}
