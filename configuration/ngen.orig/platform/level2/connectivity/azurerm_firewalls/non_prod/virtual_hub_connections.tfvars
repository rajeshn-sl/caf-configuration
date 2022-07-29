virtual_hub_connections = {
  vnet_to_hub = {
    name = "vnet-connectivity-non-prod-fw-plinks-TO-vhub-non_prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hub_non_prod"
      key    = "non_prod"
    }
    vnet = {
      vnet_key = "vnet"
    }
  }
}