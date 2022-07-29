archetype_config_overrides = {
  root = {
    archetype_id = "root"
    parameters = {
      "Allowed-Locations" = {
        "listOfAllowedLocations" = {
          values = ["southcentralus", "eastus2"]
        }
      }
      "Deny-RSG-Locations" = {
        "listOfAllowedLocations" = {
          values = ["southcentralus", "eastus2"]
        }
      }
      "Deny-Subnet-Without-Nsg" = {
        "effect" = {
          value = "Audit"
        }
      }
      "Deny-Subnet-Without-Udr" = {
        "effect" = {
          value = "Audit"
        }
      }
      "Deploy-ASC-Monitoring" = {
        "aadAuthenticationInSqlServerMonitoringEffect" = {
          value = "Disabled"
        }
        "diskEncryptionMonitoringEffect" = {
          value = "Disabled"
        }
        "encryptionOfAutomationAccountMonitoringEffect" = {
          value = "Disabled"
        }
        "identityDesignateLessThanOwnersMonitoringEffect" = {
          value = "Disabled"
        }
        "identityDesignateMoreThanOneOwnerMonitoringEffect" = {
          value = "Disabled"
        }
        "identityEnableMFAForWritePermissionsMonitoringEffect" = {
          value = "Disabled"
        }
        "identityRemoveDeprecatedAccountMonitoringEffect" = {
          value = "Disabled"
        }
        "identityRemoveDeprecatedAccountWithOwnerPermissionsMonitoringEffect" = {
          value = "Disabled"
        }
        "identityRemoveExternalAccountWithOwnerPermissionsMonitoringEffect" = {
          value = "Disabled"
        }
        "identityRemoveExternalAccountWithReadPermissionsMonitoringEffect" = {
          value = "Disabled"
        }
        "identityRemoveExternalAccountWithWritePermissionsMonitoringEffect" = {
          value = "Disabled"
        }
        "jitNetworkAccessMonitoringEffect" = {
          value = "Disabled"
        }
        "networkSecurityGroupsOnSubnetsMonitoringEffect" = {
          value = "Disabled"
        }
        "sqlDbEncryptionMonitoringEffect" = {
          value = "Disabled"
        }
        "sqlManagedInstanceAdvancedDataSecurityEmailAdminsMonitoringEffect" = {
          value = "Disabled"
        }
        "sqlManagedInstanceAdvancedDataSecurityEmailsMonitoringEffect" = {
          value = "Disabled"
        }
        "sqlServerAdvancedDataSecurityEmailAdminsMonitoringEffect" = {
          value = "Disabled"
        }
        "sqlServerAdvancedDataSecurityMonitoringEffect" = {
          value = "Disabled"
        }
        "systemUpdatesMonitoringEffect" = {
          value = "Disabled"
        }
        "useRbacRulesMonitoringEffect" = {
          value = "Disabled"
        }
        "vmssSystemUpdatesMonitoringEffect" = {
          value = "Disabled"
        }
        "windowsDefenderExploitGuardMonitoringEffect" = {
          value = "Disabled"
        }
      }
      "Deploy-ASCDF-Config" = {
        "emailSecurityContact" = {
          value = "rajeshn@ngen.it"
        }
        "logAnalytics" = {
          lz_key        = "management"
          output_key    = "diagnostics"
          resource_type = "log_analytics"
          resource_key  = "central_logs_scu"
          attribute_key = "id"
        }
        "enableAscForKubernetes" = {
          value = "DeployIfNotExists"
        }
        "enableAscForSql" = {
          value = "DeployIfNotExists"
        }
        "enableAscForSqlOnVm" = {
          value = "DeployIfNotExists"
        }
        "enableAscForDns" = {
          value = "DeployIfNotExists"
        }
        "enableAscForArm" = {
          value = "DeployIfNotExists"
        }
        "enableAscForOssDb" = {
          value = "DeployIfNotExists"
        }
        "enableAscForAppServices" = {
          value = "DeployIfNotExists"
        }
        "enableAscForRegistries" = {
          value = "DeployIfNotExists"
        }
        "enableAscForKeyVault" = {
          value = "DeployIfNotExists"
        }
        "enableAscForStorage" = {
          value = "DeployIfNotExists"
        }
        "enableAscForServers" = {
          value = "DeployIfNotExists"
        }
      }
      "Deploy-AzActivity-Log" = {
        "logAnalytics" = {
          lz_key        = "management"
          output_key    = "diagnostics"
          resource_type = "log_analytics"
          resource_key  = "central_logs_scu"
          attribute_key = "id"
        }
      }
      "Deploy-Resource-Diag" = {
        "profileName" = {
          value = "eslz-diagnostic-log"
        }
        "logAnalytics" = {
          lz_key        = "management"
          output_key    = "diagnostics"
          resource_type = "log_analytics"
          resource_key  = "central_logs_scu"
          attribute_key = "id"
        }
      }
      "Deploy-WS-Arc-Monitoring" = {
        "logAnalytics" = {
          lz_key        = "management"
          output_key    = "diagnostics"
          resource_type = "log_analytics"
          resource_key  = "central_logs_scu"
          attribute_key = "id"
        }
      }
      "Deploy-VM-Monitoring" = {
        "logAnalytics_1" = {
          lz_key        = "management"
          output_key    = "diagnostics"
          resource_type = "log_analytics"
          resource_key  = "central_logs_scu"
          attribute_key = "id"
        }
      }
      "Deploy-VMSS-Monitoring" = {
        "logAnalytics_1" = {
          lz_key        = "management"
          output_key    = "diagnostics"
          resource_type = "log_analytics"
          resource_key  = "central_logs_scu"
          attribute_key = "id"
        }
      }
    }
    access_control = {}
  }

  landing-zones = {
    archetype_id = "landing-zones"
    parameters = {
    }
    access_control = {
      "Owner" = {
        "azuread_groups" = {
          lz_key        = "launchpad"
          attribute_key = "id"
          resource_keys = ["subscription_creation_landingzones"]
        }
      }
    }
  }

  connectivity = {
    archetype_id = "platform_connectivity"
    parameters = {
    }
    access_control = {
      "Owner" = {
        "azuread_groups" = {
          lz_key        = "launchpad"
          attribute_key = "id"
          resource_keys = ["connectivity"]
        }
      }
      "[NGEN-CONNECTIVITY] CAF-network-vhub-peering" = {
        "azuread_groups" = {
          lz_key        = "launchpad"
          attribute_key = "id"
          resource_keys = ["subscription_creation_landingzones"]
        }
      }
    }
  }

  management = {
    archetype_id = "platform_management"
    parameters   = {}
    access_control = {
      "Owner" = {
        "azuread_groups" = {
          lz_key        = "launchpad"
          attribute_key = "id"
          resource_keys = ["management"]
        }
      }
    }
  }

  identity = {
    archetype_id = "platform_identity"
    parameters = {
    }
    access_control = {
      "Owner" = {
        "azuread_groups" = {
          lz_key        = "launchpad"
          attribute_key = "id"
          resource_keys = ["identity"]
        }
      }
    }
  }

  decommissioned = {
    archetype_id   = "platform_decommissioned"
    parameters     = {}
    access_control = {}
  }

  platform = {
    archetype_id   = "platform"
    parameters     = {}
    access_control = {}
  }

  sandboxes = {
    archetype_id   = "platform_sandboxes"
    parameters     = {}
    access_control = {}
  }

}