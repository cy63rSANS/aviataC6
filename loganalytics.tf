resource "azurerm_log_analytics_workspace" "aviatalogs" {
  name                = "AviataLogs"
	location = var.Location
	resource_group_name = var.ResG	
  sku                 = "PerGB2018"
  retention_in_days   = 30
  depends_on = [azurerm_resource_group.Workshop1]
}