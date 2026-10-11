output "application_settings_id" {
  description = "Map of id values across all application_settings, keyed the same as var.application_settings except keys with no id are omitted"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "application_settings_app_apdex_threshold" {
  description = "Map of app_apdex_threshold values across all application_settings, keyed the same as var.application_settings except keys with no app_apdex_threshold are omitted"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.app_apdex_threshold if v.app_apdex_threshold != null }
}
output "application_settings_enable_real_user_monitoring" {
  description = "Map of enable_real_user_monitoring values across all application_settings, keyed the same as var.application_settings except keys with no enable_real_user_monitoring are omitted"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.enable_real_user_monitoring if v.enable_real_user_monitoring != null }
}
output "application_settings_enable_slow_sql" {
  description = "Map of enable_slow_sql values across all application_settings, keyed the same as var.application_settings except keys with no enable_slow_sql are omitted"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.enable_slow_sql if v.enable_slow_sql != null }
}
output "application_settings_enable_thread_profiler" {
  description = "Map of enable_thread_profiler values across all application_settings, keyed the same as var.application_settings except keys with no enable_thread_profiler are omitted"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.enable_thread_profiler if v.enable_thread_profiler != null }
}
output "application_settings_end_user_apdex_threshold" {
  description = "Map of end_user_apdex_threshold values across all application_settings, keyed the same as var.application_settings except keys with no end_user_apdex_threshold are omitted"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.end_user_apdex_threshold if v.end_user_apdex_threshold != null }
}
output "application_settings_error_collector" {
  description = "Map of error_collector values across all application_settings, keyed the same as var.application_settings except keys with no error_collector are omitted"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.error_collector if v.error_collector != null && length(v.error_collector) > 0 }
}
output "application_settings_guid" {
  description = "Map of guid values across all application_settings, keyed the same as var.application_settings except keys with no guid are omitted"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.guid if v.guid != null && length(v.guid) > 0 }
}
output "application_settings_is_imported" {
  description = "Map of is_imported values across all application_settings, keyed the same as var.application_settings except keys with no is_imported are omitted"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.is_imported if v.is_imported != null }
}
output "application_settings_name" {
  description = "Map of name values across all application_settings, keyed the same as var.application_settings except keys with no name are omitted"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "application_settings_tracer_type" {
  description = "Map of tracer_type values across all application_settings, keyed the same as var.application_settings except keys with no tracer_type are omitted"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.tracer_type if v.tracer_type != null && length(v.tracer_type) > 0 }
}
output "application_settings_transaction_tracer" {
  description = "Map of transaction_tracer values across all application_settings, keyed the same as var.application_settings except keys with no transaction_tracer are omitted"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.transaction_tracer if v.transaction_tracer != null && length(v.transaction_tracer) > 0 }
}
output "application_settings_use_server_side_config" {
  description = "Map of use_server_side_config values across all application_settings, keyed the same as var.application_settings except keys with no use_server_side_config are omitted"
  value       = { for k, v in newrelic_application_settings.application_settings : k => v.use_server_side_config if v.use_server_side_config != null }
}

