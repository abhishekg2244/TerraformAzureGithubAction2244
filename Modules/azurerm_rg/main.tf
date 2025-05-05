resource "azurerm_resource_group" "rg" {
  name     = var.name
  location = var.location

  tags = var.tags
}


resource "azurerm_management_lock" "resource-group-level" {
  name       = "${var.name}-level-lock"
  scope      = azurerm_resource_group.rg.id
  lock_level = "CanNotDelete"
  notes      = "This Resource Group is Read-Only"

  count = var.lock_level == "" ? 0: 1

}