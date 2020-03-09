
resource "azurerm_resource_group" "dns_resource_group" {
    name        = var.resource_group_name
    location    = var.location
}

resource "azurerm_public_ip" "public_ip" {
    name                = var.ip_address_name
    location            = azurerm_resource_group.dns_resource_group.location
    resource_group_name = azurerm_resource_group.dns_resource_group.name
    allocation_method  = "Static"
    domain_name_label   = var.dns_prefix
}

resource "azurerm_dns_zone" "root" {
    name                = var.root_domain
    resource_group_name = azurerm_resource_group.dns_resource_group.name
}

resource "azurerm_dns_a_record" "wildcard_subdomain" {
    name                = "*"
    zone_name           = azurerm_dns_zone.root.name
    resource_group_name = azurerm_resource_group.dns_resource_group.name
    ttl                 = 300
    records             = [azurerm_public_ip.public_ip.ip_address]
}

// resource "azurerm_dns_a_record" "root_domain_record" {
//     name                = "@"
//     zone_name           = azurerm_dns_zone.root.name
//     resource_group_name = azurerm_resource_group.dns_resource_group.name
//     ttl                 = 300
//     records             = [azurerm_public_ip.public_ip.ip_address]
// }