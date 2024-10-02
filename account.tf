resource "azurerm_cosmosdb_account" "main" {
  name                      = "${var.environment}-${var.cosmosdb_account_name}db"
  location                  = data.azurerm_resource_group.rg.location
  resource_group_name       = data.azurerm_resource_group.rg.name
  offer_type                = var.cosmosdb_account_offer_type
  kind                      = var.cosmosdb_account_kind
  tags                      = var.default_tags
  enable_automatic_failover = var.cosmosdb_account_enable_automatic_failover

  capabilities {
    name = var.cosmosdb_account_capabilities_name
  }

  consistency_policy {
    consistency_level       = var.cosmosdb_account_consistency_level
    max_interval_in_seconds = var.cosmosdb_account_max_interval_in_seconds
    max_staleness_prefix    = var.cosmosdb_account_max_staleness_prefix
  }
  geo_location {
    location          = data.azurerm_resource_group.rg.location
    failover_priority = 0
  }
}
