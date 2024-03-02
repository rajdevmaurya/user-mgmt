resource "azurerm_resource_group" "demo" {
  name     = "example-resources"
  location = "East Us"
}

##  Demo now
resource "azurerm_storage_account" "MyStorageAccount" {
  name                     = "my-rg-007"
  resource_group_name      = azurerm_resource_group.demo.name
  location                 = azurerm_resource_group.demo.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    myazure = "azure"
    channel = "rajdevmaurya"
  }
}
