
keyvaults = {
  level3 = {
    name               = "l3"
    resource_group_key = "level3"
    sku_name           = "standard"
    tags = {
      tfstate         = "level3"
      environment     = "ngen"
      caf_tfstate     = "level3"
      caf_environment = "ngen"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "7260d889-8038-48fc-947e-f74d8b43a33d"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "a49078fb-e28b-4cb2-8acf-a1703eac21e6"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "d9ab8133-02e3-43bc-8ced-4e532f47e7f0"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

  level4 = {
    name               = "l4"
    resource_group_key = "level4"
    sku_name           = "standard"
    tags = {
      tfstate         = "level4"
      environment     = "ngen"
      caf_tfstate     = "level4"
      caf_environment = "ngen"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "7260d889-8038-48fc-947e-f74d8b43a33d"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_non_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_non_prod"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_prod"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "a49078fb-e28b-4cb2-8acf-a1703eac21e6"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "d9ab8133-02e3-43bc-8ced-4e532f47e7f0"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

}
