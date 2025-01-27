variable "environment" {
  description = "Var used for backend container name key"
  type        = string
  default     = "dev"
}

variable "default_tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
}

variable "resource_group_location" {
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  default     = "West Europe"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Redis instance. Changing this forces a new resource to be created."
  type        = string
}

variable "cosmosdb_account_name" {
  description = "Specifies the name of the Cosmos DB SQL Container. Changing this forces a new resource to be created."
  type        = string
}

variable "cosmosdb_account_offer_type" {
  description = "Specifies the Offer Type to use for this CosmosDB Account; currently, this can only be set to Standard."
  type        = string
  default     = "Standard"
}

variable "cosmosdb_account_kind" {
  description = "Specifies the Kind of CosmosDB to create - possible values are GlobalDocumentDB, MongoDB and Parse. Defaults to GlobalDocumentDB. Changing this forces a new resource to be created."
  type        = string
  default     = "GlobalDocumentDB"
}

variable "cosmosdb_account_enable_automatic_failover" {
  description = "Enable automatic failover for this Cosmos DB account."
  type        = bool
  default     = true
}

variable "cosmosdb_account_capabilities_name" {
  description = "The capabilities which should be enabled for this Cosmos DB account. The capability to enable - Possible values are AllowSelfServeUpgradeToMongo36, DisableRateLimitingResponses, EnableAggregationPipeline, EnableCassandra, EnableGremlin, EnableMongo, EnableMongo16MBDocumentSupport, EnableMongoRetryableWrites, EnableMongoRoleBasedAccessControl, EnableServerless, EnableTable, EnableUniqueCompoundNestedDocs, MongoDBv3.4 and mongoEnableDocLevelTTL. Setting MongoDBv3.4 also requires setting EnableMongo. Only AllowSelfServeUpgradeToMongo36, DisableRateLimitingResponses, EnableAggregationPipeline, MongoDBv3.4, EnableMongoRetryableWrites, EnableMongoRoleBasedAccessControl, EnableUniqueCompoundNestedDocs, EnableMongo16MBDocumentSupport and mongoEnableDocLevelTTL can be added to an existing Cosmos DB account."
  type        = string
  default     = "EnableServerless"
}

variable "cosmosdb_account_consistency_level" {
  description = "The Consistency Level to use for this CosmosDB Account - can be either BoundedStaleness, Eventual, Session, Strong or ConsistentPrefix."
  type        = string
  default     = "BoundedStaleness"
}

variable "cosmosdb_account_max_interval_in_seconds" {
  description = "When used with the Bounded Staleness consistency level, this value represents the time amount of staleness (in seconds) tolerated. The accepted range for this value is 5 - 86400 (1 day). Defaults to 5. Required when consistency_level is set to BoundedStaleness."
  type        = number
  default     = 300
}

variable "cosmosdb_account_max_staleness_prefix" {
  description = "When used with the Bounded Staleness consistency level, this value represents the number of stale requests tolerated. The accepted range for this value is 10 – 2147483647. Defaults to 100. Required when consistency_level is set to BoundedStaleness."
  type        = number
  default     = 100000
}

variable "cosmosdb_virtual_network_rules" {
  description = "List of virtual network rule IDs for CosmosDB"
  type        = list(string)
  default     = null
}

variable "is_virtual_network_filter_enabled" {
  description = "Flag to enable virtual network filtering for CosmosDB"
  type        = bool
  default     = false
}

variable "ip_range_filter" {
  description = "List of IP addresses or IP ranges for CosmosDB"
  type        = list(string)
  default     = []
}
