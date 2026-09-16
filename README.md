## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 4.62.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.62.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_cosmosdb_account.main](https://registry.terraform.io/providers/hashicorp/azurerm/4.62.0/docs/resources/cosmosdb_account) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/4.62.0/docs/data-sources/client_config) | data source |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/4.62.0/docs/data-sources/resource_group) | data source |

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

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_cosmosdb_account.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cosmosdb_account) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_key_metadata_writes_enabled"></a> [access\_key\_metadata\_writes\_enabled](#input\_access\_key\_metadata\_writes\_enabled) | Is write operations on metadata resources (databases, containers, throughput) via account keys enabled? | `bool` | `null` | no |
| <a name="input_analytical_storage"></a> [analytical\_storage](#input\_analytical\_storage) | Specifies an analytical\_storage block for the CosmosDB account. | <pre>object({<br>    schema_type = string<br>  })</pre> | `null` | no |
| <a name="input_automatic_failover_enabled"></a> [automatic\_failover\_enabled](#input\_automatic\_failover\_enabled) | Enable automatic failover for this Cosmos DB account. | `bool` | `false` | no |
| <a name="input_backup"></a> [backup](#input\_backup) | Specifies a backup block for the CosmosDB account. | <pre>object({<br>    type                = string<br>    tier                = optional(string)<br>    interval_in_minutes = optional(number)<br>    retention_in_hours  = optional(number)<br>    storage_redundancy  = optional(string)<br>  })</pre> | `null` | no |
| <a name="input_capabilities"></a> [capabilities](#input\_capabilities) | The capabilities which should be enabled for this Cosmos DB account. | <pre>list(object({<br>    name = string<br>  }))</pre> | `[]` | no |
| <a name="input_capacity"></a> [capacity](#input\_capacity) | Specifies a capacity block for the CosmosDB account. | <pre>object({<br>    total_throughput_limit = number<br>  })</pre> | `null` | no |
| <a name="input_consistency_policy"></a> [consistency\_policy](#input\_consistency\_policy) | Specifies a consistency\_policy resource, used to define the consistency policy for this CosmosDB account. | <pre>object({<br>    consistency_level       = string<br>    max_interval_in_seconds = optional(number)<br>    max_staleness_prefix    = optional(number)<br>  })</pre> | n/a | yes |
| <a name="input_cors_rule"></a> [cors\_rule](#input\_cors\_rule) | Specifies a cors\_rule resource for the CosmosDB account. | <pre>object({<br>    allowed_headers    = list(string)<br>    allowed_methods    = list(string)<br>    allowed_origins    = list(string)<br>    exposed_headers    = list(string)<br>    max_age_in_seconds = number<br>  })</pre> | `null` | no |
| <a name="input_free_tier_enabled"></a> [free\_tier\_enabled](#input\_free\_tier\_enabled) | Enable the Free Tier pricing option for this Cosmos DB account. Defaults to false. Changing this forces a new resource to be created. | `bool` | `null` | no |
| <a name="input_geo_locations"></a> [geo\_locations](#input\_geo\_locations) | Specifies a geo\_location resource, used to define where data should be replicated with the failover\_priority 0 specifying the primary location. | <pre>list(object({<br>    location          = string<br>    failover_priority = number<br>    zone_redundant    = optional(bool, false)<br>  }))</pre> | n/a | yes |
| <a name="input_identity"></a> [identity](#input\_identity) | Specifies an identity block for the CosmosDB account. | <pre>object({<br>    type         = string<br>    identity_ids = optional(list(string), [])<br>  })</pre> | `null` | no |
| <a name="input_ip_range_filter"></a> [ip\_range\_filter](#input\_ip\_range\_filter) | CosmosDB Firewall Support: This value specifies the set of IP addresses or IP address ranges in CIDR form to be included as the allowed list of client IPs. | `string` | `null` | no |
| <a name="input_is_virtual_network_filter_enabled"></a> [is\_virtual\_network\_filter\_enabled](#input\_is\_virtual\_network\_filter\_enabled) | Enables virtual network filtering for this Cosmos DB account. | `bool` | `null` | no |
| <a name="input_kind"></a> [kind](#input\_kind) | Specifies the Kind of CosmosDB to create - possible values are GlobalDocumentDB, MongoDB and Parse. Defaults to GlobalDocumentDB. Changing this forces a new resource to be created. | `string` | `"GlobalDocumentDB"` | no |
| <a name="input_local_authentication_disabled"></a> [local\_authentication\_disabled](#input\_local\_authentication\_disabled) | Disable local authentication and ensure only MSI and AAD can be used exclusively for authentication. | `bool` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_minimal_tls_version"></a> [minimal\_tls\_version](#input\_minimal\_tls\_version) | Specifies the minimal TLS version for the CosmosDB account. Possible values are Tls12 and Tls13. | `string` | `null` | no |
| <a name="input_mongo_server_version"></a> [mongo\_server\_version](#input\_mongo\_server\_version) | The Server Version of a MongoDB account. Possible values are 4.2, 4.0, 3.6, and 3.2. Only applicable when kind is MongoDB. | `string` | `null` | no |
| <a name="input_multiple_write_locations_enabled"></a> [multiple\_write\_locations\_enabled](#input\_multiple\_write\_locations\_enabled) | Enable multiple write locations for this Cosmos DB account. | `bool` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Specifies the name of the CosmosDB Account. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_network_acl_bypass_for_azure_services"></a> [network\_acl\_bypass\_for\_azure\_services](#input\_network\_acl\_bypass\_for\_azure\_services) | If Azure services can bypass ACLs. | `bool` | `null` | no |
| <a name="input_network_acl_bypass_ids"></a> [network\_acl\_bypass\_ids](#input\_network\_acl\_bypass\_ids) | The list of resource Ids for Network Acl Bypass for this Cosmos DB account. | `list(string)` | `null` | no |
| <a name="input_offer_type"></a> [offer\_type](#input\_offer\_type) | Specifies the Offer Type to use for this CosmosDB Account; currently can only be set to Standard. | `string` | `"Standard"` | no |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Whether or not public network access is allowed for this CosmosDB account. | `bool` | `true` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which the CosmosDB Account is created. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_virtual_network_rules"></a> [virtual\_network\_rules](#input\_virtual\_network\_rules) | Specifies a virtual\_network\_rule resource, used to define which subnets are allowed to access this CosmosDB account. | <pre>list(object({<br>    id                                   = string<br>    ignore_missing_vnet_service_endpoint = optional(bool, false)<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_connection_strings"></a> [connection\_strings](#output\_connection\_strings) | A list of connection strings available for this CosmosDB account. |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | The endpoint used to connect to the CosmosDB account. |
| <a name="output_id"></a> [id](#output\_id) | The CosmosDB Account ID. |
| <a name="output_name"></a> [name](#output\_name) | The CosmosDB Account name. |
| <a name="output_primary_key"></a> [primary\_key](#output\_primary\_key) | The Primary key for the CosmosDB Account. |
| <a name="output_primary_readonly_key"></a> [primary\_readonly\_key](#output\_primary\_readonly\_key) | The Primary read-only Key for the CosmosDB Account. |
| <a name="output_read_endpoints"></a> [read\_endpoints](#output\_read\_endpoints) | A list of read endpoints available for this CosmosDB account. |
| <a name="output_secondary_key"></a> [secondary\_key](#output\_secondary\_key) | The Secondary key for the CosmosDB Account. |
| <a name="output_secondary_readonly_key"></a> [secondary\_readonly\_key](#output\_secondary\_readonly\_key) | The Secondary read-only key for the CosmosDB Account. |
| <a name="output_write_endpoints"></a> [write\_endpoints](#output\_write\_endpoints) | A list of write endpoints available for this CosmosDB account. |
<!-- END_TF_DOCS -->