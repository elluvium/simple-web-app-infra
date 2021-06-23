resource "azurerm_storage_account" "simplewebappstorageaccount" {
  name                     = "webappstacc${var.env}"
  resource_group_name      = var.resource_group_name
  location                 = var.region
  account_tier             = "Standard"
  account_replication_type = "GRS"
}