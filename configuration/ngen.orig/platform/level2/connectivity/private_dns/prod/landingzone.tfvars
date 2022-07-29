landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "connectivity_virtual_wan"
  level               = "level2"
  key                 = "connectivity_private_dns_prod"
  tfstates = {
    # Firewall
    connectivity_firewalls_prod = {
      level   = "current"
      tfstate = "connectivity_firewalls_prod.tfstate"
    }
    # Identity Level2
    identity_level2 = {
      level   = "current"
      tfstate = "identity_level2.tfstate"
    }
  }
}
