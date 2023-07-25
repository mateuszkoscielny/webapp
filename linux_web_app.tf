resource "azurerm_linux_web_app" "web_app" {
  name                = "${var.name}-web-app-${var.env_type}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_service_plan.serv_plan.location
  service_plan_id     = azurerm_service_plan.serv_plan.id

  site_config {
    always_on = false
  }
}
