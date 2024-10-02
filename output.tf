output "id" {
  description = "The CosmosDB Account ID."
  value       = azurerm_cosmosdb_account.main.id
  sensitive   = false
}
output "endpoint" {
  description = "The endpoint used to connect to the CosmosDB account."
  value       = azurerm_cosmosdb_account.main.endpoint
  sensitive   = false
}
output "read_endpoints" {
  description = "A list of read endpoints available for this CosmosDB account."
  value       = azurerm_cosmosdb_account.main.read_endpoints
  sensitive   = false
}
output "write_endpoints" {
  description = "A list of write endpoints available for this CosmosDB account."
  value       = azurerm_cosmosdb_account.main.write_endpoints
  sensitive   = false
}
output "primary_key" {
  description = "The Primary key for the CosmosDB Account."
  value       = azurerm_cosmosdb_account.main.primary_key
  sensitive   = true
}
output "secondary_key" {
  description = "The Secondary key for the CosmosDB Account."
  value       = azurerm_cosmosdb_account.main.secondary_key
  sensitive   = true
}
output "primary_readonly_key" {
  description = "The Primary read-only Key for the CosmosDB Account."
  value       = azurerm_cosmosdb_account.main.primary_readonly_key
  sensitive   = true
}
output "secondary_readonly_key" {
  description = "The Secondary read-only key for the CosmosDB Account."
  value       = azurerm_cosmosdb_account.main.secondary_readonly_key
  sensitive   = true
}
output "connection_strings" {
  description = "A list of connection strings available for this CosmosDB account."
  value       = azurerm_cosmosdb_account.main.connection_strings
  sensitive   = true
}
