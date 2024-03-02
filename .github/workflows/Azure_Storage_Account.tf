resource "azurerm_resource_group" "myrgroup" {
  name     = "rg-usr-mgmt"
  location = "East Us"
}

##  Demo now
resource "azurerm_storage_account" "MyStorageAccount" {
  name                     = "my-rg-007"
  resource_group_name      = azurerm_resource_group.myrgroup.name
  location                 = azurerm_resource_group.myrgroup.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    myazure = "azure"
    channel = "rajdevmaurya"
  }
}
