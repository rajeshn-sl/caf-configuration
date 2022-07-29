landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "connectivity_virtual_hub_non_prod"
  level               = "level2"
  key                 = "connectivity_firewalls_non_prod"
  tfstates = {
    # Virtual Hub
    connectivity_virtual_hub_non_prod = {
      level   = "current"
      tfstate = "connectivity_virtual_hub_non_prod.tfstate"
    }
    # firewall policies
    connectivity_firewall_policies_non_prod = {
      level   = "current"
      tfstate = "connectivity_firewall_policies_non_prod.tfstate"
    }
  }
}
