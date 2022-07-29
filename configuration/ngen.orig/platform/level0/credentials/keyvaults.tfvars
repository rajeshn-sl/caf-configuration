keyvaults = {
  cred_ea_account_owner = {
    name                     = "ngen-eaowner"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = "false"

    creation_policies = {
      caf_platform_maintainers = {
        lz_key             = "launchpad"
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      identity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "identity"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }
  }
  cred_level0 = {
    name                     = "ngen-idl0"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = "false"

    creation_policies = {
      caf_platform_maintainers = {
        lz_key             = "launchpad"
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      identity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "identity"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      level0 = {
        lz_key             = "launchpad"
        azuread_group_key  = "level0"
        secret_permissions = ["Get"]
      }
    }
  }
  cred_identity = {
    name                     = "ngen-id"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = "false"

    creation_policies = {
      caf_platform_maintainers = {
        lz_key             = "launchpad"
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      identity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "identity"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }
  }
  cred_management = {
    name                     = "ngen-mg"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = "false"

    creation_policies = {
      caf_platform_maintainers = {
        lz_key             = "launchpad"
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      identity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "identity"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      management_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "management"
        secret_permissions = ["Get"]
      }
    }
  }
  cred_eslz = {
    name                     = "ngen-es"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = "false"

    creation_policies = {
      caf_platform_maintainers = {
        lz_key             = "launchpad"
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      identity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "identity"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      eslz_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "eslz"
        secret_permissions = ["Get"]
      }
    }
  }
  cred_connectivity = {
    name                     = "ngen-co"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = "false"

    creation_policies = {
      caf_platform_maintainers = {
        lz_key             = "launchpad"
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      identity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "identity"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      connectivity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "connectivity"
        secret_permissions = ["Get"]
      }
    }
  }
  cred_subscription_creation_platform = {
    name                     = "ngen-scp"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = "false"

    creation_policies = {
      caf_platform_maintainers = {
        lz_key             = "launchpad"
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      identity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "identity"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      subscription_creation_platform_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "subscription_creation_platform"
        secret_permissions = ["Get"]
      }
    }
  }
  cred_subscription_creation_landingzones = {
    name                     = "ngen-scl"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = "false"

    creation_policies = {
      caf_platform_maintainers = {
        lz_key             = "launchpad"
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      identity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "identity"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      subscription_creation_platform_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "subscription_creation_landingzones"
        secret_permissions = ["Get"]
      }
    }
  }
  cred_gitops = {
    name                     = "ngen-gitops"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = "false"

    creation_policies = {
      caf_platform_maintainers = {
        lz_key             = "launchpad"
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      identity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "identity"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }
  }
}
