output "cdn_profile_out" {
  value       = azurerm_cdn_profile.acdnp
  description = "CDN Profile out"
}

output "cdn_endpoint_out" {
  value       = azurerm_cdn_endpoint.acdne
  description = "CDN endpoint out"
}