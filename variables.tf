variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
    description = "The Azure location where all ressources in this example should be created"
    type        = string
}

variable "dns_prefix" {
    description = "DNS-Prefix for Cluster"
    type        = string
}

variable "ip_address_name" {
    type    = string
}

variable "root_domain" {
    type    = string
}