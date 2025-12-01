module "cosmosdb" {
  source                                     = "./terraform-azure-cosmosdb-account"
  environment                                = "dev"
  region                                     = "westeurope"
  resource_group_name                        = "rg-example"
  cosmosdb_account_name                      = "myapp"
  cosmosdb_account_offer_type                = "Standard"
  cosmosdb_account_kind                      = "GlobalDocumentDB"
  cosmosdb_account_enable_automatic_failover = true
  is_virtual_network_filter_enabled          = false
  ip_range_filter                            = ["10.1.0.0/24", "10.2.0.0/24"]
  cosmosdb_account_capabilities_name         = "EnableMultipleWriteLocations"
  cosmosdb_account_consistency_level         = "Session"
  cosmosdb_account_max_interval_in_seconds   = 5
  cosmosdb_account_max_staleness_prefix      = 100
  cosmosdb_virtual_network_rules = [
    # Optional: Resource IDs of subnets if VNET filter is enabled
    # "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-example/providers/Microsoft.Network/virtualNetworks/vnet/subnets/subnet1"
  ]
  default_tags = {
    environment = "dev"
    project     = "example"
  }
}
