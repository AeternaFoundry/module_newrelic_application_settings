resource "newrelic_application_settings" "application_settings" {
  for_each = var.application_settings

  app_apdex_threshold         = each.value.app_apdex_threshold
  enable_real_user_monitoring = each.value.enable_real_user_monitoring
  enable_slow_sql             = each.value.enable_slow_sql
  enable_thread_profiler      = each.value.enable_thread_profiler
  end_user_apdex_threshold    = each.value.end_user_apdex_threshold
  guid                        = each.value.guid
  name                        = each.value.name
  tracer_type                 = each.value.tracer_type
  use_server_side_config      = each.value.use_server_side_config

  dynamic "error_collector" {
    for_each = each.value.error_collector != null ? each.value.error_collector : []
    content {
      expected_error_classes = error_collector.value.expected_error_classes
      expected_error_codes   = error_collector.value.expected_error_codes
      ignored_error_classes  = error_collector.value.ignored_error_classes
      ignored_error_codes    = error_collector.value.ignored_error_codes
    }
  }

  dynamic "transaction_tracer" {
    for_each = each.value.transaction_tracer != null ? each.value.transaction_tracer : []
    content {
      dynamic "explain_query_plans" {
        for_each = transaction_tracer.value.explain_query_plans != null ? transaction_tracer.value.explain_query_plans : []
        content {
          query_plan_threshold_type  = explain_query_plans.value.query_plan_threshold_type
          query_plan_threshold_value = explain_query_plans.value.query_plan_threshold_value
        }
      }
      dynamic "sql" {
        for_each = transaction_tracer.value.sql != null ? [transaction_tracer.value.sql] : []
        content {
          record_sql = sql.value.record_sql
        }
      }
      stack_trace_threshold_value = transaction_tracer.value.stack_trace_threshold_value
      transaction_threshold_type  = transaction_tracer.value.transaction_threshold_type
      transaction_threshold_value = transaction_tracer.value.transaction_threshold_value
    }
  }
}

