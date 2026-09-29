terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.7.0"
    }
  }

backend "azurerm" {
  resource_group_name = "manish-rg"
  storage_account_name = "linny01"
  container_name       = "tfstate"
  key                  = "resource_group.tfstate"
}
}

provider "azurerm" {
  features {}
}