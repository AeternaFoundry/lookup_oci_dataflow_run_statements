output "dataflow_run_statements_lookup_id" {
  description = "Map of id values across all dataflow_run_statements_lookup, keyed the same as var.dataflow_run_statements_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_dataflow_run_statements.dataflow_run_statements_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dataflow_run_statements_lookup_filter" {
  description = "Map of filter values across all dataflow_run_statements_lookup, keyed the same as var.dataflow_run_statements_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_dataflow_run_statements.dataflow_run_statements_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "dataflow_run_statements_lookup_run_id" {
  description = "Map of run_id values across all dataflow_run_statements_lookup, keyed the same as var.dataflow_run_statements_lookup except keys with no run_id are omitted"
  value       = { for k, v in data.oci_dataflow_run_statements.dataflow_run_statements_lookup : k => v.run_id if v.run_id != null && length(v.run_id) > 0 }
}
output "dataflow_run_statements_lookup_state" {
  description = "Map of state values across all dataflow_run_statements_lookup, keyed the same as var.dataflow_run_statements_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_dataflow_run_statements.dataflow_run_statements_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}
output "dataflow_run_statements_lookup_statement_collection" {
  description = "Map of statement_collection values across all dataflow_run_statements_lookup, keyed the same as var.dataflow_run_statements_lookup except keys with no statement_collection are omitted"
  value       = { for k, v in data.oci_dataflow_run_statements.dataflow_run_statements_lookup : k => v.statement_collection if v.statement_collection != null && length(v.statement_collection) > 0 }
}

