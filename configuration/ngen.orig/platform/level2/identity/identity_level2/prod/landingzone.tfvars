landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "management"
  level               = "level2"
  key                 = "identity_level2"
  tfstates = {
    management = {
      level   = "lower"
      tfstate = "management.tfstate"
    }
  }
}
