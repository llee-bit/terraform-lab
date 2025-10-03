terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-state2-rg"
    storage_account_name = "tfstatellee001"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    use_azuread_auth     = true
  }
}
