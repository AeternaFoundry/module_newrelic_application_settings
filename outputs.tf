output "application_settings_id" {
  description = "Map of id values across all application_settings, keyed the same as var.application_settings"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.id }
}
output "application_settings_app_apdex_threshold" {
  description = "Map of app_apdex_threshold values across all application_settings, keyed the same as var.application_settings"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.app_apdex_threshold }
}
output "application_settings_enable_real_user_monitoring" {
  description = "Map of enable_real_user_monitoring values across all application_settings, keyed the same as var.application_settings"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.enable_real_user_monitoring }
}
output "application_settings_enable_slow_sql" {
  description = "Map of enable_slow_sql values across all application_settings, keyed the same as var.application_settings"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.enable_slow_sql }
}
output "application_settings_enable_thread_profiler" {
  description = "Map of enable_thread_profiler values across all application_settings, keyed the same as var.application_settings"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.enable_thread_profiler }
}
output "application_settings_end_user_apdex_threshold" {
  description = "Map of end_user_apdex_threshold values across all application_settings, keyed the same as var.application_settings"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.end_user_apdex_threshold }
}
output "application_settings_error_collector" {
  description = "Map of error_collector values across all application_settings, keyed the same as var.application_settings"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.error_collector }
}
output "application_settings_guid" {
  description = "Map of guid values across all application_settings, keyed the same as var.application_settings"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.guid }
}
output "application_settings_is_imported" {
  description = "Map of is_imported values across all application_settings, keyed the same as var.application_settings"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.is_imported }
}
output "application_settings_name" {
  description = "Map of name values across all application_settings, keyed the same as var.application_settings"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.name }
}
output "application_settings_tracer_type" {
  description = "Map of tracer_type values across all application_settings, keyed the same as var.application_settings"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.tracer_type }
}
output "application_settings_transaction_tracer" {
  description = "Map of transaction_tracer values across all application_settings, keyed the same as var.application_settings"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.transaction_tracer }
}
output "application_settings_use_server_side_config" {
  description = "Map of use_server_side_config values across all application_settings, keyed the same as var.application_settings"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.use_server_side_config }
}

