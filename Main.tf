provider "azurerm" {
      features {}
    }
    terraform {
      required_providers {
        azurerm = {
          source  = "hashicorp/azurerm"
          version = "3.72.0"
        }
      }
}
# Terraform backend configuration block -precreated
terraform {
  backend "azurerm" {
    resource_group_name  = "rg-cloudquickpocs"
    storage_account_name = "ccpsazuretf0001"
    container_name       = "ccpterraformstatefile"
    key                  = "ccpsterraform.tfstate"
  }
}
