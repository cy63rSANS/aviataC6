resource "random_string" "storage-name" {
  length           = 13
  special          = false
  numeric          = false
  upper            = false
}

resource "azurerm_storage_account" "storagestijr" {
  name                     = "${random_string.storage-name.id}"
  resource_group_name      = var.ResG
  location                 = var.Location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  public_network_access_enabled = true
  depends_on = [azurerm_resource_group.Workshop1]

  tags = {
    Version = var.Version
  }
}
resource "azurerm_storage_container" "logs" {
  name                  = "logs"
  storage_account_name  = "${random_string.storage-name.id}"
  container_access_type = "blob"
  depends_on = [azurerm_storage_account.storagestijr]
}