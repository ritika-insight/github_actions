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
    resource_group_name  = "git-r"
    storage_account_name = "strgitactions"
    container_name       = "tfstate"
    key                  = "task_key"
  }
}

provider "azurerm" {
  features {}
}

