terraform {
     backend "azurerm" {
      resource_group_name  = "mygithubaction-rg"
      storage_account_name = "mygithubactiontfstate"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.78.0"
    }
    
    }
  }


# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
