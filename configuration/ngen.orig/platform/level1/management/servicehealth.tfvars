monitoring = {
  service_health_alerts = {
    enable_service_health_alerts = true
    name                         = "alerts"
    action_group_name            = "actiongrp"
    shortname                    = "HealthAlerts"
    resource_group_key           = "alerts"
    email_alert_settings = {
      support1 = {
        name                    = "email_alert_support1"
        email_address           = "rajeshn@ngen.it"
        use_common_alert_schema = false
      }
    }
  }
}
