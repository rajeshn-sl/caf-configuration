azurerm_firewalls = {
  fw_non_prod_plinks_01 = {
    name               = "fw-non-prod-plinks-01"
    resource_group_key = "firewall_policies"
    vnet_key           = "vnet"
    sku_tier           = "Standard"
    firewall_policy = {
      key    = "root"
      lz_key = "connectivity_firewall_policies_non_prod"
    }
    zones = [1, 2, 3]

    public_ips = {
      ip1 = {
        name          = "pip1"
        public_ip_key = "fw_pip1"
        vnet_key      = "vnet"
        subnet_key    = "AzureFirewallSubnet"
      }
    }
  }
}
