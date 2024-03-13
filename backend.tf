terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-N01610736-RG"
    storage_account_name = "tfstateN01610736sa"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
  }
}

