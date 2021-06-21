resource "azurerm_storage_account" "simplewebappstorageaccount" {
  name                     = "simplewebappstorageacc"
  resource_group_name      = var.resource_group_name
  location                 = var.region
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
