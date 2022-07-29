vnets = {
  vnet = {
    resource_group_key = "firewall_policies"
    vnet = {
      name          = "vnet-connectivity-prod-fw-plinks"
      address_space = ["10.51.196.0/26"]
    }
    specialsubnets = {
      AzureFirewallSubnet = {
        name = "AzureFirewallSubnet"
        cidr = ["10.51.196.0/26"]
      }
    }
  }
}