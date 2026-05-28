variable "solly" {}
variable "jhons" {}
variable "armani" {

}
resource "azurerm_resource_group" "rg-prod" {
  for_each = var.solly
  name     = each.key
  location = each.value
}
resource "azurerm_storage_account" "stg07" {
  for_each                 = var.jhons
  name                     = each.value.name
  resource_group_name      = azurerm_resource_group.rg-prod[each.value.resource_group_name].name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}
resource "azurerm_storage_container" "contain07" {
  for_each = var.armani

  name                  = each.value.name
  storage_account_name  = azurerm_storage_account.stg07[each.value.storage_account_name].name
  container_access_type = each.value.container_access_type
}
