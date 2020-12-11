variable "ase_name" {
  type        = string
  description = "App Service name"
}
variable "ase_mysql" {
  type        = bool
  description = "MySQL In App"
}
variable "rg_location" {
  type        = string
  description = "Resource Group location"
}
variable "rg_name" {
  type        = string
  description = "Resource Group name"
}
variable "asp_id" {
  type        = string
  description = "App Service Plan id"
}
variable "ain_key" {
  type = string
  description = "Application Insights instrumentation key"
}
variable "ain_conn" {
  type = string
  description = "Application Insights connection string"
}
variable "docker_image" {
  type = string
  description = "Docker image to be loaded on start"
}
