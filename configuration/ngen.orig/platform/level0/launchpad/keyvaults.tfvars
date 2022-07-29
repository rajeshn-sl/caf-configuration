
keyvaults = {
  level0 = {
    name               = "ngen-kv-l0"
    resource_group_key = "level0"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level0"
      caf_environment = "ngen"
    }

    creation_policies = {
      // rajeshn@ngen.it
      bootstrap_user = {
        object_id          = "2c66bc8a-9455-478a-bdc3-eeac0aef5198"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      # ADDED TO ADD KV ACCESS POLICY FOR LOGGED IN USER
      logged_in_user = {
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

  level1 = {
    name               = "ngen-kv-l1"
    resource_group_key = "level1"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level1"
      caf_environment = "ngen"
    }

    creation_policies = {
      // rajeshn@ngen.it
      bootstrap_user = {
        object_id          = "2c66bc8a-9455-478a-bdc3-eeac0aef5198"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      # ADDED TO ADD KV ACCESS POLICY FOR LOGGED IN USER
      logged_in_user = {
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

  level2 = {
    name               = "ngen-kv-l2"
    resource_group_key = "level2"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level2"
      caf_environment = "ngen"
    }

    creation_policies = {
      // rajeshn@ngen.it
      bootstrap_user = {
        object_id          = "2c66bc8a-9455-478a-bdc3-eeac0aef5198"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      # ADDED TO ADD KV ACCESS POLICY FOR LOGGED IN USER
      logged_in_user = {
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }
}
