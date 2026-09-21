module "cosmosdb_account" {
  source = "../.."

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