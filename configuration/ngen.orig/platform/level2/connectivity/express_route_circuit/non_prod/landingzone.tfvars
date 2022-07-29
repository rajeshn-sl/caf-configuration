landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "management"
  level               = "level2"
  key                 = "connectivity_express_route_non_prod"
  tfstates = {
    management = {
      level   = "lower"
      tfstate = "management.tfstate"
    }
  }
}
