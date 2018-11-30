
#Resource Group
variable "location" {
    type        = "string"
    description = "Azure location you will deploy the infrastructure"
}

variable "app_rg_name" {
    type        = "string"
    description = "Azure resource group name"
}

#Azure Service Principal

variable "subscription_id" {
    type        = "string"
    description = "Azure subscription ID"
}

variable "client_id" {
    type        = "string"
    description = "Azure Service Principal id (client id)"
}

variable "client_secret" {
    type        = "string"
    description = "Azure client Service Principal secret (client secret)"
}

variable "tenant_id" {
    type        = "string"
    description = "Azure tenant or directory id"
}