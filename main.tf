terraform {
  backend "azurerm" {
    resource_group_name   = "it-share"
    storage_account_name  = "tfstateitshare"
    container_name        = "tstate"
    key                   = "terraform.tfstate"
  }
}

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "rg" {
    name     = "it-share-rg"
    location = "westeurope"
}

module "simple-web-app-storage-account" {
  source = "./modules/storage-account"

  env = var.env
  resource_group_name = azurerm_resource_group.rg.name
}
