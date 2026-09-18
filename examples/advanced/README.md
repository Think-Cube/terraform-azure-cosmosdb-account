# Example: Advanced

Full-featured example for `terraform-azure-cosmosdb-account`.

```hcl
module "cosmosdb_account" {
  source = "github.com/Think-Cube/terraform-azure-cosmosdb-account?ref=v1.0.0"

  name                              = "cosmos-prod-example"
  resource_group_name               = "rg-example"
  location                          = "West Europe"
  kind                              = "GlobalDocumentDB"
  automatic_failover_enabled        = true
  public_network_access_enabled     = false
  local_authentication_disabled     = true
  multiple_write_locations_enabled  = false
  minimal_tls_version               = "Tls12"
  access_key_metadata_writes_enabled = false

  consistency_policy = {
    consistency_level       = "BoundedStaleness"
    max_interval_in_seconds = 300
    max_staleness_prefix    = 100000
  }

  geo_locations = [
    {
      location          = "West Europe"
      failover_priority = 0
      zone_redundant    = true
    },
    {
      location          = "North Europe"
      failover_priority = 1
      zone_redundant    = false
    }
  ]

  capabilities = [
    { name = "EnableServerless" }
  ]

  backup = {
    type               = "Periodic"
    interval_in_minutes = 240
    retention_in_hours  = 8
    storage_redundancy  = "Geo"
  }

  identity = {
    type = "SystemAssigned"
  }

  capacity = {
    total_throughput_limit = 4000
  }

  tags = {
    environment = "prod"
    managed_by  = "terraform"
  }
}```` 

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cosmosdb_account"></a> [cosmosdb\_account](#module\_cosmosdb\_account) | github.com/Think-Cube/terraform-azure-cosmosdb-account | v1.0.0 |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->