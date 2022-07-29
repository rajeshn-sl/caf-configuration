custom_landing_zones = {
  ngen-corp = {
    display_name               = "Corp"
    parent_management_group_id = "ngen-landing-zones"
    archetype_config = {
      archetype_id   = "landingzone_corp"
      parameters     = {}
      access_control = {}
    }
    subscriptions    = {}
    subscription_ids = []
  }

  ngen-online = {
    display_name               = "Online"
    parent_management_group_id = "ngen-landing-zones"
    archetype_config = {
      archetype_id   = "landingzone_online"
      parameters     = {}
      access_control = {}
    }
    subscriptions    = {}
    subscription_ids = []
  }

  ngen-corp-prod = {
    display_name               = "Production"
    parent_management_group_id = "ngen-corp"
    archetype_config = {
      archetype_id   = "landingzone_prod"
      parameters     = {}
      access_control = {}
    }
    subscriptions    = {}
    subscription_ids = []
  }

  ngen-corp-non-prod = {
    display_name               = "Non Production"
    parent_management_group_id = "ngen-corp"
    archetype_config = {
      archetype_id   = "landingzone_non_prod"
      parameters     = {}
      access_control = {}
    }
    subscriptions    = {}
    subscription_ids = []
  }

  ngen-online-web = {
    display_name               = "Non Production"
    parent_management_group_id = "ngen-online"
    archetype_config = {
      archetype_id   = "landingzone_online_web"
      parameters     = {}
      access_control = {}
    }
    subscriptions    = {}
    subscription_ids = []
  }

}