resource "azurerm_resource_group" "rg" {
  name     = "${var.name}-rg"
  location = var.region
  tags = {
    Environment = var.env_type
    Team        = "DevOps"
  }
}
