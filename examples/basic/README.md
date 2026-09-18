# Example: Basic

Minimal working example for `terraform-azure-cosmosdb-account`.

```hcl
module "cosmosdb_account" {
  source = "github.com/Think-Cube/terraform-azure-cosmosdb-account?ref=v1.0.0"

  name                = "cosmos-dev-example"
  resource_group_name = "rg-example"
  location            = "West Europe"

  consistency_policy = {
    consistency_level = "Session"
  }

  geo_locations = [
    {
      location          = "West Europe"
      failover_priority = 0
    }
  ]

  tags = {
    environment = "dev"
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