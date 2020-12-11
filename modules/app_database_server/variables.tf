variable "asdserver_name" {
  type        = string
  description = "Mysql DB server name"
}
variable "asdserver_username" {
  type        = string
  description = "Mysql DB username"
}
variable "asdserver_password" {
  type        = string
  description = "MySQL db password"
}
variable "asdserver_version" {
  type        = string
  description = "Mysql DB server version"
}

variable "rg_location" {
  type        = string
  description = "Resource Group location"
}
variable "rg_name" {
  type        = string
  description = "Resource Group name"
}
