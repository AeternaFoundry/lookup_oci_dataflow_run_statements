data "oci_dataflow_run_statements" "dataflow_run_statements_lookup" {
  for_each = var.dataflow_run_statements_lookup

  run_id = each.value.run_id
  state  = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

