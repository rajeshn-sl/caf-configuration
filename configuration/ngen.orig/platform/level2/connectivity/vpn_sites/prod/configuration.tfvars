landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "connectivity_virtual_wan"
  level               = "level2"
  key                 = "connectivity_vpn_sites_prod"
  tfstates = {
    connectivity_virtual_wan = {
      level   = "current"
      tfstate = "connectivity_virtual_wan.tfstate"
    }
    connectivity_virtual_hub_prod = {
      level   = "current"
      tfstate = "connectivity_virtual_hub_prod.tfstate"
    }
  }
}