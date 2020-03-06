output "ip_address" {
  value = azurerm_public_ip.public_ip.ip_address
}

output "hostname" {
  value = azurerm_public_ip.public_ip.fqdn
}

output "dns_resource_group" {
  value = azurerm_resource_group.dns_resource_group.name
}