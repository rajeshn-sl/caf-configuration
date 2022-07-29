public_ip_addresses = {
  fw_pip1 = {
    name                    = "pip-non-prod-fw-01"
    resource_group_key      = "firewall_policies"
    sku                     = "Standard"
    allocation_method       = "Static"
    ip_version              = "IPv4"
    idle_timeout_in_minutes = "4"
  }
}