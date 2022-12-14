vpn_gateway_connections = {
  non_prod = {
    name                      = "production"
    internet_security_enabled = true // propagate to default route table
    vpn_site = {
      key = "non_prod"
    }
    virtual_hub = {
      lz_key = "connectivity_virtual_hub_non_prod"
      key    = "non_prod"
    }

    vpn_links = {
      non_prod = {
        name           = "non_prod"
        shared_key     = ""
        bgp_enabled    = false
        bandwidth_mbps = 100
        link_index     = 0
        protocol       = "IKEv2"
        ipsec_policies = {
          policy1 = {
            dh_group                 = "DHGroup24"
            ike_encryption_algorithm = "AES256"
            ike_integrity_algorithm  = "SHA256"
            encryption_algorithm     = "AES256"
            integrity_algorithm      = "SHA256"
            pfs_group                = "None"
            sa_data_size_kb          = "102400000"
            sa_lifetime_sec          = "3600"
          }
        }
      }
    }
  }
}