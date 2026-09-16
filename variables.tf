variable "name" {
  description = "Specifies the name of the CosmosDB Account. Changing this forces a new resource to be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the CosmosDB Account is created. Changing this forces a new resource to be created."
  type        = string
}

variable "location" {
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
}

variable "offer_type" {
  description = "Specifies the Offer Type to use for this CosmosDB Account; currently can only be set to Standard."
  type        = string
  default     = "Standard"
}

variable "kind" {
  description = "Specifies the Kind of CosmosDB to create - possible values are GlobalDocumentDB, MongoDB and Parse. Defaults to GlobalDocumentDB. Changing this forces a new resource to be created."
  type        = string
  default     = "GlobalDocumentDB"
  validation {
    condition     = contains(["GlobalDocumentDB", "MongoDB", "Parse"], var.kind)
    error_message = "kind must be one of: GlobalDocumentDB, MongoDB, Parse."
  }
}

variable "automatic_failover_enabled" {
  description = "Enable automatic failover for this Cosmos DB account."
  type        = bool
  default     = false
}

variable "free_tier_enabled" {
  description = "Enable the Free Tier pricing option for this Cosmos DB account. Defaults to false. Changing this forces a new resource to be created."
  type        = bool
  default     = null
}

variable "public_network_access_enabled" {
  description = "Whether or not public network access is allowed for this CosmosDB account."
  type        = bool
  default     = true
}

variable "is_virtual_network_filter_enabled" {
  description = "Enables virtual network filtering for this Cosmos DB account."
  type        = bool
  default     = null
}

variable "network_acl_bypass_for_azure_services" {
  description = "If Azure services can bypass ACLs."
  type        = bool
  default     = null
}

variable "network_acl_bypass_ids" {
  description = "The list of resource Ids for Network Acl Bypass for this Cosmos DB account."
  type        = list(string)
  default     = null
}

variable "local_authentication_disabled" {
  description = "Disable local authentication and ensure only MSI and AAD can be used exclusively for authentication."
  type        = bool
  default     = null
}

variable "multiple_write_locations_enabled" {
  description = "Enable multiple write locations for this Cosmos DB account."
  type        = bool
  default     = null
}

variable "access_key_metadata_writes_enabled" {
  description = "Is write operations on metadata resources (databases, containers, throughput) via account keys enabled?"
  type        = bool
  default     = null
}

variable "mongo_server_version" {
  description = "The Server Version of a MongoDB account. Possible values are 4.2, 4.0, 3.6, and 3.2. Only applicable when kind is MongoDB."
  type        = string
  default     = null
}

variable "minimal_tls_version" {
  description = "Specifies the minimal TLS version for the CosmosDB account. Possible values are Tls12 and Tls13."
  type        = string
  default     = null
  validation {
    condition     = var.minimal_tls_version == null || contains(["Tls12", "Tls13"], var.minimal_tls_version)
    error_message = "minimal_tls_version must be Tls12 or Tls13."
  }
}

variable "ip_range_filter" {
  description = "CosmosDB Firewall Support: This value specifies the set of IP addresses or IP address ranges in CIDR form to be included as the allowed list of client IPs."
  type        = string
  default     = null
}

variable "consistency_policy" {
  description = "Specifies a consistency_policy resource, used to define the consistency policy for this CosmosDB account."
  type = object({
    consistency_level       = string
    max_interval_in_seconds = optional(number)
    max_staleness_prefix    = optional(number)
  })
}

variable "geo_locations" {
  description = "Specifies a geo_location resource, used to define where data should be replicated with the failover_priority 0 specifying the primary location."
  type = list(object({
    location          = string
    failover_priority = number
    zone_redundant    = optional(bool, false)
  }))
}

variable "capabilities" {
  description = "The capabilities which should be enabled for this Cosmos DB account."
  type = list(object({
    name = string
  }))
  default = []
}

variable "virtual_network_rules" {
  description = "Specifies a virtual_network_rule resource, used to define which subnets are allowed to access this CosmosDB account."
  type = list(object({
    id                                   = string
    ignore_missing_vnet_service_endpoint = optional(bool, false)
  }))
  default = []
}

variable "backup" {
  description = "Specifies a backup block for the CosmosDB account."
  type = object({
    type                = string
    tier                = optional(string)
    interval_in_minutes = optional(number)
    retention_in_hours  = optional(number)
    storage_redundancy  = optional(string)
  })
  default = null
}

variable "cors_rule" {
  description = "Specifies a cors_rule resource for the CosmosDB account."
  type = object({
    allowed_headers    = list(string)
    allowed_methods    = list(string)
    allowed_origins    = list(string)
    exposed_headers    = list(string)
    max_age_in_seconds = number
  })
  default = null
}

variable "identity" {
  description = "Specifies an identity block for the CosmosDB account."
  type = object({
    type         = string
    identity_ids = optional(list(string), [])
  })
  default = null
}

variable "analytical_storage" {
  description = "Specifies an analytical_storage block for the CosmosDB account."
  type = object({
    schema_type = string
  })
  default = null
}

variable "capacity" {
  description = "Specifies a capacity block for the CosmosDB account."
  type = object({
    total_throughput_limit = number
  })
  default = null
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
