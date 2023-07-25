resource "azurerm_service_plan" "serv_plan" {
  name                = "${var.name}-sp-${var.env_type}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  os_type             = "Linux"
  sku_name            = var.sku_name
}
