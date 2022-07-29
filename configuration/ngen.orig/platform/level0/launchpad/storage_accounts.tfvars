
storage_accounts = {
  level0 = {
    name                      = "ngenstatel0"
    resource_group_key        = "level0"
    account_kind              = "BlobStorage"
    account_tier              = "Standard"
    shared_access_key_enabled = false
    account_replication_type  = "GRS"

    tags = {
      ## Those tags must never be changed after being set as they are used by the rover to locate the launchpad and the tfstates.
      # Only adjust the environment value at creation time
      caf_environment = "ngen"
      caf_launchpad   = "launchpad"
      caf_tfstate     = "level0"
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

  level1 = {
    name                      = "ngenstatel1"
    resource_group_key        = "level1"
    account_kind              = "BlobStorage"
    account_tier              = "Standard"
    shared_access_key_enabled = false
    account_replication_type  = "GRS"

    tags = {
      # Those tags must never be changed while set as they are used by the rover to locate the launchpad and the tfstates.
      caf_environment = "ngen"
      caf_launchpad   = "launchpad"
      caf_tfstate     = "level1"
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

  level2 = {
    name                      = "ngenstatel2"
    resource_group_key        = "level2"
    account_kind              = "BlobStorage"
    account_tier              = "Standard"
    shared_access_key_enabled = false
    account_replication_type  = "GRS"

    tags = {
      # Those tags must never be changed while set as they are used by the rover to locate the launchpad and the tfstates.
      caf_environment = "ngen"
      caf_launchpad   = "launchpad"
      caf_tfstate     = "level2"
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


}