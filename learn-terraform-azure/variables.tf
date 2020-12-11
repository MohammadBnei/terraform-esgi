variable "location" {}

variable "prefix" {
  type    = string
  default = "my"
}

variable "tags" {
  type = map

  default = {
    Environment = "Terraform GS"
    Dept        = "Engineering"
  }
}

variable "sku" {
  default = {
    westus2 = "16.04-LTS"
    eastus  = "18.04-LTS"
  }
}

output "public_ip_address" {
  value = data.azurerm_public_ip.ip.ip_address
}