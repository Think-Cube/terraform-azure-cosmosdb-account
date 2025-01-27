## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 4.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.14.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_cosmosdb_account.main](https://registry.terraform.io/providers/hashicorp/azurerm/4.14.0/docs/resources/cosmosdb_account) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/4.14.0/docs/data-sources/client_config) | data source |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/4.14.0/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cosmosdb_account_capabilities_name"></a> [cosmosdb\_account\_capabilities\_name](#input\_cosmosdb\_account\_capabilities\_name) | The capabilities which should be enabled for this Cosmos DB account. The capability to enable - Possible values are AllowSelfServeUpgradeToMongo36, DisableRateLimitingResponses, EnableAggregationPipeline, EnableCassandra, EnableGremlin, EnableMongo, EnableMongo16MBDocumentSupport, EnableMongoRetryableWrites, EnableMongoRoleBasedAccessControl, EnableServerless, EnableTable, EnableUniqueCompoundNestedDocs, MongoDBv3.4 and mongoEnableDocLevelTTL. Setting MongoDBv3.4 also requires setting EnableMongo. Only AllowSelfServeUpgradeToMongo36, DisableRateLimitingResponses, EnableAggregationPipeline, MongoDBv3.4, EnableMongoRetryableWrites, EnableMongoRoleBasedAccessControl, EnableUniqueCompoundNestedDocs, EnableMongo16MBDocumentSupport and mongoEnableDocLevelTTL can be added to an existing Cosmos DB account. | `string` | `"EnableServerless"` | no |
| <a name="input_cosmosdb_account_consistency_level"></a> [cosmosdb\_account\_consistency\_level](#input\_cosmosdb\_account\_consistency\_level) | The Consistency Level to use for this CosmosDB Account - can be either BoundedStaleness, Eventual, Session, Strong or ConsistentPrefix. | `string` | `"BoundedStaleness"` | no |
| <a name="input_cosmosdb_account_enable_automatic_failover"></a> [cosmosdb\_account\_enable\_automatic\_failover](#input\_cosmosdb\_account\_enable\_automatic\_failover) | Enable automatic failover for this Cosmos DB account. | `bool` | `true` | no |
| <a name="input_cosmosdb_account_kind"></a> [cosmosdb\_account\_kind](#input\_cosmosdb\_account\_kind) | Specifies the Kind of CosmosDB to create - possible values are GlobalDocumentDB, MongoDB and Parse. Defaults to GlobalDocumentDB. Changing this forces a new resource to be created. | `string` | `"GlobalDocumentDB"` | no |
| <a name="input_cosmosdb_account_max_interval_in_seconds"></a> [cosmosdb\_account\_max\_interval\_in\_seconds](#input\_cosmosdb\_account\_max\_interval\_in\_seconds) | When used with the Bounded Staleness consistency level, this value represents the time amount of staleness (in seconds) tolerated. The accepted range for this value is 5 - 86400 (1 day). Defaults to 5. Required when consistency\_level is set to BoundedStaleness. | `number` | `300` | no |
| <a name="input_cosmosdb_account_max_staleness_prefix"></a> [cosmosdb\_account\_max\_staleness\_prefix](#input\_cosmosdb\_account\_max\_staleness\_prefix) | When used with the Bounded Staleness consistency level, this value represents the number of stale requests tolerated. The accepted range for this value is 10 – 2147483647. Defaults to 100. Required when consistency\_level is set to BoundedStaleness. | `number` | `100000` | no |
| <a name="input_cosmosdb_account_name"></a> [cosmosdb\_account\_name](#input\_cosmosdb\_account\_name) | Specifies the name of the Cosmos DB SQL Container. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_cosmosdb_account_offer_type"></a> [cosmosdb\_account\_offer\_type](#input\_cosmosdb\_account\_offer\_type) | Specifies the Offer Type to use for this CosmosDB Account; currently, this can only be set to Standard. | `string` | `"Standard"` | no |
| <a name="input_cosmosdb_virtual_network_rules"></a> [cosmosdb\_virtual\_network\_rules](#input\_cosmosdb\_virtual\_network\_rules) | List of virtual network rule IDs for CosmosDB | `list(string)` | `null` | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | A mapping of tags to assign to the resource. | `map(any)` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Var used for backend container name key | `string` | `"dev"` | no |
| <a name="input_ip_range_filter"></a> [ip\_range\_filter](#input\_ip\_range\_filter) | List of IP addresses or IP ranges for CosmosDB | `list(string)` | `[]` | no |
| <a name="input_is_virtual_network_filter_enabled"></a> [is\_virtual\_network\_filter\_enabled](#input\_is\_virtual\_network\_filter\_enabled) | Flag to enable virtual network filtering for CosmosDB | `bool` | `false` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | `string` | `"West Europe"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the Redis instance. Changing this forces a new resource to be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | The endpoint used to connect to the CosmosDB account. |
| <a name="output_id"></a> [id](#output\_id) | The CosmosDB Account ID. |
| <a name="output_primary_key"></a> [primary\_key](#output\_primary\_key) | The Primary key for the CosmosDB Account. |
| <a name="output_primary_readonly_key"></a> [primary\_readonly\_key](#output\_primary\_readonly\_key) | The Primary read-only Key for the CosmosDB Account. |
| <a name="output_read_endpoints"></a> [read\_endpoints](#output\_read\_endpoints) | A list of read endpoints available for this CosmosDB account. |
| <a name="output_secondary_key"></a> [secondary\_key](#output\_secondary\_key) | The Secondary key for the CosmosDB Account. |
| <a name="output_secondary_readonly_key"></a> [secondary\_readonly\_key](#output\_secondary\_readonly\_key) | The Secondary read-only key for the CosmosDB Account. |
| <a name="output_write_endpoints"></a> [write\_endpoints](#output\_write\_endpoints) | A list of write endpoints available for this CosmosDB account. |
