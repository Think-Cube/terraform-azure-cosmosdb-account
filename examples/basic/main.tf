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
}