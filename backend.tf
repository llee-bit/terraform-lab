terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-state-rg"
    storage_account_name = "tfstateobay001"
    container_name       = "loretta"
    key                  = "terraform.tfstate"
    use_azuread_auth     = true
  }
}
