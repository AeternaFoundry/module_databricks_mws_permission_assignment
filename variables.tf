variable "mws_permission_assignments" {
  description = <<EOT
Map of mws_permission_assignments, attributes below
Required:
    - permissions
    - principal_id
    - workspace_id
EOT

  type = map(object({
    permissions  = set(string)
    principal_id = number
    workspace_id = number
  }))
}

