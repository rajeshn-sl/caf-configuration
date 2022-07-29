landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "connectivity_express_route_non_prod"
  level               = "level2"
  key                 = "connectivity_express_route_peerings_non_prod"
  tfstates = {
    connectivity_express_route_non_prod = {
      level   = "current"
      tfstate = "connectivity_express_route_non_prod.tfstate"
    }
  }
}
