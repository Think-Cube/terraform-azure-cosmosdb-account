resource "azurerm_cosmosdb_account" "main" {
  name                              = "${var.environment}-${var.cosmosdb_account_name}-cosmos"
  location                          = data.azurerm_resource_group.rg.location
  resource_group_name               = data.azurerm_resource_group.rg.name
  offer_type                        = var.cosmosdb_account_offer_type
  kind                              = var.cosmosdb_account_kind
  tags                              = var.default_tags
  automatic_failover_enabled        = var.cosmosdb_account_enable_automatic_failover
  is_virtual_network_filter_enabled = var.is_virtual_network_filter_enabled
  ip_range_filter                   = toset(var.ip_range_filter)

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

  dynamic "virtual_network_rule" {
    for_each = var.cosmosdb_virtual_network_rules != null ? var.cosmosdb_virtual_network_rules : []
    content {
      id = virtual_network_rule.value
    }
  }  
}
