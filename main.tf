terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
  required_version = ">=1.0.0"
}

provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg2" {
  name     = "test-rg-Loretta"
  location = "westus2"
}

# resource "azurerm_storage_account" "sa" {
#   name                     = var.storage_account_name
#   resource_group_name      = azurerm_resource_group.rg2.name
#   location                 = azurerm_resource_group.rg2.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
#   allow_shared_key_access  = true
#   min_tls_version          = "TLS1_2"
# }


