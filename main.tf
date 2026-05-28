resource "azurerm_resource_group" "rg-12" {
  name     = "rg-alen"
  location = "eastus"
}

resource "azurerm_storage_account" "sa-12" {
  name                     = "montecarlo7"
  resource_group_name      = azurerm_resource_group.rg-12.name
  location                 = azurerm_resource_group.rg-12.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
