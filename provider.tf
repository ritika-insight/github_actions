terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 3.44.1"
    }
    random = {
      version = ">=3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "qt-eastus-test-rg-1"
    storage_account_name = "qt-eastus-test-str-account-1"
    container_name       = "qt-eastus-test-container-1"
    key                  = "qt-eastus-test-task-key-1"
  }
}

provider "azurerm" {
  features {}
}

