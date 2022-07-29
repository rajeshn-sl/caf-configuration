landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "management"
  level               = "level2"
  key                 = "identity_level2_aadds"
  tfstates = {
    # Virtual Hub
    connectivity_virtual_hub_prod = {
      level   = "current"
      tfstate = "connectivity_virtual_hub_prod.tfstate"
    }
    management = {
      level   = "lower"
      tfstate = "management.tfstate"
    }
  }
}
