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
}
variable "tme_weight" {
  type        = number
  description = "Specifies how much traffic should be distributed to this endpoint"
}
variable "tme_prio" {
  type        = number
  description = "Specifies the priority of this Endpoint"
}
variable "tmp_name" {
  type        = string
  description = "Traffic Manager Profile name"
}
variable "rg_name" {
  type        = string
  description = "Resource Group name"
}
