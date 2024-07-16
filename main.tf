resource "azurerm_resource_group" "example" {
  name     = "myktrg"
  location = "West Europe"
}


resource "azurerm_storage_account" "stexample" {
  name                     = "6416507kartikeya"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags = {
    environment = "staging"
  }
}