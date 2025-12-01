# Terraform Azure Cosmos DB Account Module

This module deploys an **Azure Cosmos DB Account** using Terraform.

## Description

- Creates a Cosmos DB Account in a specified Azure Resource Group and region.
- Supports multiple account configurations including consistency, failover, VNET integration, and capabilities.
- Automatically names the account using the following pattern: `<environment>-<cosmosdb_account_name>-cosmos`

## Features

- Configurable **account kind** (e.g., GlobalDocumentDB, MongoDB, Cassandra)
- Supports **automatic failover** across regions
- Optional **virtual network filter** and subnet access
- Set **IP range restrictions** for network security
- Supports **custom capabilities** (e.g., multiple write locations)
- Configurable **consistency policy** (Session, Strong, Bounded Staleness, etc.)
- Tags applied consistently for tracking and billing purposes

## Typical Use Cases

- Globally distributed databases for applications
- High availability and low latency for multi-region deployments
- Controlled network access using VNETs and IP ranges
- Configurable consistency for different application requirements

## Notes

- If `is_virtual_network_filter_enabled` is true, `cosmosdb_virtual_network_rules` should contain subnet resource IDs.
- The module supports automatic failover; ensure appropriate configuration for multiple regions if needed.
- Naming convention ensures consistent identification across environments.

```
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
```