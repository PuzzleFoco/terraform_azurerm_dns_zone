/*
 * Created Date: 15.01.2020
 * Author: Fabius Engel (fabius.engel@msg.group)
 * -----
 * Last Modified: 15.01.2020 12:11:57
 * Modified By: Fabius Engel (fabius.engel@msg.group)
 * -----
 * Copyright (c) 2020 msg nexinsure ag
 */

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