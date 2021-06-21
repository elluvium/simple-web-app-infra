provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "rg" {
    name     = "it-share-rg"
    location = "westeurope"
}

module "simple-web-app-storage-account" {
  source = "./modules/storage-account"

  resource_group_name = azurerm_resource_group.rg.name
}
