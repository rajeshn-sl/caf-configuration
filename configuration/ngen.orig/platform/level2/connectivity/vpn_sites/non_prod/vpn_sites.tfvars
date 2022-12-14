vpn_sites = {
  non_prod = {
    name = "Non Production"
    resource_group = {
      lz_key = "connectivity_virtual_wan"
      key    = "global_wan"
    }
    virtual_wan = {
      lz_key = "connectivity_virtual_wan"
      key    = "global_wan"
    }
    device_vendor = "checkpoint"
    address_cidrs = ["<replace>"]
    links = {
      primary = {
        name          = "primary"
        ip_address    = "<replace>"
        provider_name = "Microsoft"
        speed_in_mbps = "100"
      }
    }
  }
}