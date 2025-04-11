terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
  subscription_id = "dcb52f24-3382-4902-9301-084ebd8ec819"
}