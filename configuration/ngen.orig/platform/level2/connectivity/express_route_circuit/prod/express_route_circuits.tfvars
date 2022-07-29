express_route_circuits = {
  prod = {
    name                  = "er-1-prod"
    resource_group_key    = "prod"
    service_provider_name = "XL Axiata"
    peering_location      = "Jakarta"
    tier                  = "Standard"
    family                = "MeteredData"
    bandwidth_in_mbps     = 50
  }
}