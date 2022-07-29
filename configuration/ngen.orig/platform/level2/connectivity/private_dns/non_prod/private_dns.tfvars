private_dns = {
  "privatelink.adf.azure.com" = {
    name               = "privatelink.adf.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_plinks_01 = {
        name     = "fw-non-prod-plinks-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_firewalls_non_prod"
      }
    }
  }
  "privatelink.datafactory.azure.net" = {
    name               = "privatelink.datafactory.azure.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_plinks_01 = {
        name     = "fw-non-prod-plinks-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_firewalls_non_prod"
      }
    }
  }
  "privatelink.blob.core.windows.net" = {
    name               = "privatelink.blob.core.windows.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_plinks_01 = {
        name     = "fw-non-prod-plinks-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_firewalls_non_prod"
      }
    }
  }
  "privatelink.file.core.windows.net" = {
    name               = "privatelink.file.core.windows.net"
    resource_group_key = "dns_connectivity_prod"
    vnet_links = {
      fw_non_prod_plinks_01 = {
        name     = "fw-non-prod-plinks-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_firewalls_non_prod"
      }
    }
  }
  "privatelink.notebooks.azure.net" = {
    name               = "privatelink.notebooks.azure.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_plinks_01 = {
        name     = "fw-non-prod-plinks-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_firewalls_non_prod"
      }
    }
  }
  "privatelink.dfs.core.windows.net" = {
    name               = "privatelink.dfs.core.windows.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_plinks_01 = {
        name     = "fw-non-prod-plinks-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_firewalls_non_prod"
      }
    }
  }
  "privatelink.vaultcore.azure.net" = {
    name               = "privatelink.vaultcore.azure.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_plinks_01 = {
        name     = "fw-non-prod-plinks-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_firewalls_non_prod"
      }
    }
  }
  "privatelink.southeastasia.azmk8s.io" = {
    name               = "privatelink.southeastasia.azmk8s.io"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_plinks_01 = {
        name     = "fw-non-prod-plinks-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_firewalls_non_prod"
      }
    }
  }
  "privatelink.azurecr.io" = {
    name               = "privatelink.azurecr.io"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_plinks_01 = {
        name     = "fw-non-prod-plinks-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_firewalls_non_prod"
      }
    }
  }
  "privatelink.southeastasia.backup.windowsazure.com" = {
    name               = "privatelink.southeastasia.backup.windowsazure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_plinks_01 = {
        name     = "fw-non-prod-plinks-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_firewalls_non_prod"
      }
    }
  }
  "privatelink.siterecovery.windowsazure.com" = {
    name               = "privatelink.siterecovery.windowsazure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_plinks_01 = {
        name     = "fw-non-prod-plinks-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_firewalls_non_prod"
      }
    }
  }
  "privatelink.servicebus.windows.net" = {
    name               = "privatelink.servicebus.windows.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_plinks_01 = {
        name     = "fw-non-prod-plinks-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_firewalls_non_prod"
      }
    }
  }
  "privatelink.api.azureml.ms" = {
    name               = "privatelink.api.azureml.ms"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_plinks_01 = {
        name     = "fw-non-prod-plinks-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_firewalls_non_prod"
      }
    }
  }
  "privatelink.monitor.azure.com" = {
    name               = "privatelink.monitor.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_plinks_01 = {
        name     = "fw-non-prod-plinks-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_firewalls_non_prod"
      }
    }
  }
  "privatelink.oms.opinsights.non_prod.com" = {
    name               = "privatelink.oms.opinsights.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_plinks_01 = {
        name     = "fw-non-prod-plinks-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_firewalls_non_prod"
      }
    }
  }
  "privatelink.ods.opinsights.azure.com" = {
    name               = "privatelink.ods.opinsights.azure.com"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_plinks_01 = {
        name     = "fw-non-prod-plinks-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_firewalls_non_prod"
      }
    }
  }
  "privatelink.agentsvc.azure-automation.net" = {
    name               = "privatelink.agentsvc.azure-automation.net"
    resource_group_key = "dns_connectivity_non_prod"
    vnet_links = {
      fw_non_prod_plinks_01 = {
        name     = "fw-non-prod-plinks-01"
        vnet_key = "vnet"
        lz_key   = "connectivity_firewalls_non_prod"
      }
    }
  }
}