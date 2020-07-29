provider "azurerm" {
    version = "=1.38.0"

    subscription_id = var.subscription_id
    client_id       = var.client_id
    client_secret   = var.client_secret
    tenant_id       = var.tenant_id
}

module "dns_zone" {
    source = "../../terraform_azurerm_dns_zone"

    resource_group_name = "masterthesisrg"
    location            = "West Europe"
    dns_prefix          = "masterthesisdns"
    ip_address_name     = "IPAddressForMasterthesis"
    root_domain         = "masterthesis.online"
}