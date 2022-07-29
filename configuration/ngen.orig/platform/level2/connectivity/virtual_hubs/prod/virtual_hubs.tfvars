virtual_hubs = {
  prod = {
    virtual_wan = {
      lz_key = "connectivity_virtual_wan"
      key    = "global_wan"
    }

    resource_group = {
      lz_key = "connectivity_virtual_wan"
      key    = "global_wan"
    }

    hub_name           = "Production"
    region             = "region1"
    hub_sku            = "Standard"
    hub_address_prefix = "10.0.4.0/24"
    deploy_firewall    = false
    deploy_p2s         = false
    p2s_config         = {}
    deploy_s2s         = false
    deploy_er          = false
  }
}

