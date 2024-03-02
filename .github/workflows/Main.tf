terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  cloud {
    organization = "rajdevmaurya"
    workspaces {
      name = "user-mgmt"
    }
  }
}

provider "azurerm" {
  features {}
}