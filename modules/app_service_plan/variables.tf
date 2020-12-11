variable "asp_name" {
  type = string
  description = "App Service Plan name"
}
variable "asp_location" {
  type = string
  description = "App Service Plan location"
}
variable "asp_kind" {
  type = string
  description = "App Service Plan kind"
}
variable "asp_tier" {
  type = string
  description = "App Service Plan sku tier"
}
variable "asp_size" {
  type = string
  description = "App Service Plan ski size"
}
variable "rg_name" {
  type        = string
  description = "Resource Group name"
}