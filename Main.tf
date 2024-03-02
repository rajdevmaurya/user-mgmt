# ARM provider block -rekhu
provider "azurerm" {
  source = "hashicorp/azurerm"
  version = "~> 3.0.2"
  features {}
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