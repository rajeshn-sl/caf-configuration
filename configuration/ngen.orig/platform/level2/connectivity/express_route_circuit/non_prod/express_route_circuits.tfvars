express_route_circuits = {
  non_prod = {
    name                  = "er-1-nonprod"
    resource_group_key    = "non_prod"
    service_provider_name = "XL Axiata"
    peering_location      = "Jakarta"
    tier                  = "Standard"
    family                = "MeteredData"
    bandwidth_in_mbps     = 50
  }
}