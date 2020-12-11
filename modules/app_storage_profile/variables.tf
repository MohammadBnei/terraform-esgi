variable "acdnp_name" {
  type        = string
  description = "Name of the CDN Profile"
}

variable "acdnp_sku" {
  type        = string
  description = "The pricing related information of current CDN profile"
  default     = "Standard_Verizon"
}

variable "acdne_name" {
  type        = string
  description = "Name of the CDN Endpoint"
}

variable "acdne_origin" {
  type        = string
  description = "Origins of the CDN endpoint."
}

variable "acdne_host_name" {
  type        = string
  description = "A string that determines the hostname/IP address of the origin server"
}

variable "rg_location" {
  type        = string
  description = "Resource Group location"
}
variable "rg_name" {
  type        = string
  description = "Resource Group name"
}