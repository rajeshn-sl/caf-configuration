vnets = {
  vnet = {
    resource_group_key = "rg"
    vnet = {
      name          = "vnet-identity-prod-aadds"
      address_space = ["10.10.100.0/27"]
      dns_servers   = ["10.10.100.4", "10.10.100.5"]
    }
    subnets = {
      aadds = {
        name    = "snet-aadds"
        cidr    = ["10.10.100.0/28"]
        nsg_key = "aadds_re1"
      }
      management = {
        name    = "snet-aadds-management"
        cidr    = ["10.10.100.16/28"]
        nsg_key = "empty_nsg"
      }
    }
  }
}