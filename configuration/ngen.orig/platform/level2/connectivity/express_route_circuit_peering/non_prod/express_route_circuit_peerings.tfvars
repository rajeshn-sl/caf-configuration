express_route_circuit_peerings = {
  private_peering = {
    express_route = {
      lz_key = "connectivity_express_route_non_prod"
      key    = "non_prod"
    }
    peering_type                  = "AzurePrivatePeering"
    primary_peer_address_prefix   = "<replace>"
    secondary_peer_address_prefix = "<replace>"
    vlan_id                       = "<replace>"
    peer_asn                      = "<replace>"
  }
}