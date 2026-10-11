variable "dataflow_run_statements_lookup" {
  description = <<EOT
Map of dataflow_run_statements_lookup, attributes below
Required:
    - run_id
Optional:
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    run_id = string
    state  = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

