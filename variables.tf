variable "application_settings" {
  description = <<EOT
Map of application_settings, attributes below
Optional:
    - app_apdex_threshold
    - enable_real_user_monitoring
    - enable_slow_sql
    - enable_thread_profiler
    - end_user_apdex_threshold
    - guid
    - name
    - tracer_type
    - use_server_side_config
    - error_collector (block):
        - expected_error_classes (optional)
        - expected_error_codes (optional)
        - ignored_error_classes (optional)
        - ignored_error_codes (optional)
    - transaction_tracer (block):
        - explain_query_plans (optional, block):
            - query_plan_threshold_type (optional)
            - query_plan_threshold_value (optional)
        - sql (optional, block):
            - record_sql (required)
        - stack_trace_threshold_value (optional)
        - transaction_threshold_type (optional)
        - transaction_threshold_value (optional)
EOT

  type = map(object({
    app_apdex_threshold         = optional(number)
    enable_real_user_monitoring = optional(bool)
    enable_slow_sql             = optional(bool)
    enable_thread_profiler      = optional(bool)
    end_user_apdex_threshold    = optional(number)
    guid                        = optional(string)
    name                        = optional(string)
    tracer_type                 = optional(string)
    use_server_side_config      = optional(bool)
    error_collector = optional(list(object({
      expected_error_classes = optional(list(string))
      expected_error_codes   = optional(list(string))
      ignored_error_classes  = optional(list(string))
      ignored_error_codes    = optional(list(string))
    })))
    transaction_tracer = optional(list(object({
      explain_query_plans = optional(list(object({
        query_plan_threshold_type  = optional(string)
        query_plan_threshold_value = optional(number)
      })))
      sql = optional(object({
        record_sql = string
      }))
      stack_trace_threshold_value = optional(number)
      transaction_threshold_type  = optional(string)
      transaction_threshold_value = optional(number)
    })))
  }))
}

