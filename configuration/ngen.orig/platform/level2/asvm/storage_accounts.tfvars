
storage_accounts = {
  level3 = {
    name                     = "l3"
    resource_group_key       = "level3"
    account_kind             = "BlobStorage"
    account_tier             = "Standard"
    account_replication_type = "GRS"
    tags = {
      ## Those tags must never be changed after being set as they are used by the rover to locate the launchpad and the tfstates.
      # Only adjust the environment value at creation time
      tfstate         = "level3"
      environment     = "ngen"
      launchpad       = "launchpad"
      caf_environment = "ngen"
      caf_launchpad   = "launchpad"
      caf_tfstate     = "level3"
      ##
    }
    blob_properties = {
      versioning_enabled                = true
      container_delete_retention_policy = 7
      delete_retention_policy           = 7
    }
    containers = {
      tfstate = {
        name = "tfstate"
      }
    }
  }

  level4 = {
    name                     = "l4"
    resource_group_key       = "level4"
    account_kind             = "BlobStorage"
    account_tier             = "Standard"
    account_replication_type = "GRS"
    tags = {
      # Those tags must never be changed while set as they are used by the rover to locate the launchpad and the tfstates.
      tfstate         = "level4"
      environment     = "ngen"
      launchpad       = "launchpad"
      caf_environment = "ngen"
      caf_launchpad   = "launchpad"
      caf_tfstate     = "level4"
    }
    blob_properties = {
      versioning_enabled                = true
      container_delete_retention_policy = 7
      delete_retention_policy           = 7
    }
  }

}