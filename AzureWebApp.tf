# Create a Resource Group
resource "azurerm_resource_group" "appservice-rg" {
  name     = "CloudQuickPoCs-RG001"
  location = "East US"
  tags = {
    description = "POCs Demo"
    environment = "POC"
    owner       = "CloudQuickPoCs"  
  }
}

# Create the App Service Plan
resource "azurerm_app_service_plan" "service-plan" {
  name                = "user-mgmt"
  location            = azurerm_resource_group.appservice-rg.location
  resource_group_name = azurerm_resource_group.appservice-rg.name
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Standard"
    size = "S1"
  }

  tags = {
    description = "POCs Demo"
    environment = "POC"
    owner       = "CloudQuickPoCs"  
  }
}

# Create the App Service
resource "azurerm_app_service" "app-service" {
  name                = "CloudQuickPoCs-Web-app-service-07"
  location            = azurerm_resource_group.appservice-rg.location
  resource_group_name = azurerm_resource_group.appservice-rg.name
  app_service_plan_id = azurerm_app_service_plan.service-plan.id

  site_config {
    linux_fx_version = "JAVA|1.8.0_312-1.8"
  }

  tags = {
    description = "POCs Demo"
    environment = "POC"
    owner       = "CloudQuickPoCs"  
  }
}
