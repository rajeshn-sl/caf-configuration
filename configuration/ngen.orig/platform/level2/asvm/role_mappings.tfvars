
#
# Services supported: subscriptions, storage accounts and resource groups
# Can assign roles to: AD groups, AD object ID, AD applications, Managed identities
#

role_mapping = {
  built_in_role_mapping = {
    resource_groups = {
      level3 = {
        "Reader" = {
          object_ids = {
            keys = [
              "d9ab8133-02e3-43bc-8ced-4e532f47e7f0", // caf_platform_maintainers
              "7260d889-8038-48fc-947e-f74d8b43a33d"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
      level4 = {
        "Reader" = {
          object_ids = {
            keys = [
              "d9ab8133-02e3-43bc-8ced-4e532f47e7f0", // caf_platform_maintainers
              "7260d889-8038-48fc-947e-f74d8b43a33d"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
    }

    storage_accounts = {
      level3 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "d9ab8133-02e3-43bc-8ced-4e532f47e7f0", // caf_platform_maintainers
              "7260d889-8038-48fc-947e-f74d8b43a33d"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "7260d889-8038-48fc-947e-f74d8b43a33d" // subscription_creation_landingzones
            ]
          }
        }
      }

      level4 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "d9ab8133-02e3-43bc-8ced-4e532f47e7f0", // caf_platform_maintainers
              "7260d889-8038-48fc-947e-f74d8b43a33d"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "7260d889-8038-48fc-947e-f74d8b43a33d" // subscription_creation_landingzones
            ]
          }
        }
      }

    }
  }
}
