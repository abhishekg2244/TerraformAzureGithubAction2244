terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }

backend "azurerm" {
    resource_group_name  = "testrg"
    storage_account_name = "tfstatestorageacc24"
    container_name       = "tfstatecontainer"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {
    
  }
  subscription_id = "dcb52f24-3382-4902-9301-084ebd8ec819"
}
