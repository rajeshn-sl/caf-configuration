azurerm_firewall_policies = {
  root = {
    name   = "prod-root-policy"
    region = "region1"
    resource_group = {
      key = "firewall_policies"
    }
    dns = {
      proxy_enabled = true
    }
    threat_intelligence_mode = "Alert"
  }
}
