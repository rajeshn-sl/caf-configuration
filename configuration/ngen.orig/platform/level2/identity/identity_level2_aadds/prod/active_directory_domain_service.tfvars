active_directory_domain_service = {
  aadds = {
    name   = "aadds"
    region = "region1"
    resource_group = {
      key = "rg"
    }
    domain_name           = "aadds-contoso.net"
    sku                   = "Standard"
    filtered_sync_enabled = false
    initial_replica_set = {
      region = "region1"
      subnet = {
        vnet_key = "vnet"
        key      = "aadds"
      }
    }
    notifications = {
      notify_dc_admins      = true
      notify_global_admins  = false
      additional_recipients = ["notifyA@example.net", "notifyB@example.net"]
    }
    security = {
      ntlm_v1_enabled         = false
      sync_kerberos_passwords = true
      sync_ntlm_passwords     = false
      sync_on_prem_passwords  = true
      tls_v1_enabled          = false
    }
  }
}
