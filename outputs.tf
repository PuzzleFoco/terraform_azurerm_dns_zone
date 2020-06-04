output "ip_address" {
  value = azurerm_public_ip.public_ip.ip_address
}

output "fqdn" {
  value = azurerm_public_ip.public_ip.fqdn
}

output "dns_resource_group" {
  value = azurerm_resource_group.dns_resource_group.name
}

output "root_domain" {
  value = var.root_domain
}

output "nameserver" {
  value = azurerm_dns_zone.root.name_servers
}