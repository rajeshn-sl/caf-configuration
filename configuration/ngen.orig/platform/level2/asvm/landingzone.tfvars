landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "management"
  level               = "level2"
  key                 = "asvm"
  tfstates = {
    management = {
      level   = "lower"
      tfstate = "management.tfstate"
    }
  }
}