output "mws_permission_assignments_id" {
  description = "Map of id values across all mws_permission_assignments, keyed the same as var.mws_permission_assignments except keys with no id are omitted"
  value       = { for k, v in databricks_mws_permission_assignment.mws_permission_assignments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mws_permission_assignments_permissions" {
  description = "Map of permissions values across all mws_permission_assignments, keyed the same as var.mws_permission_assignments except keys with no permissions are omitted"
  value       = { for k, v in databricks_mws_permission_assignment.mws_permission_assignments : k => v.permissions if v.permissions != null && length(v.permissions) > 0 }
}
output "mws_permission_assignments_principal_id" {
  description = "Map of principal_id values across all mws_permission_assignments, keyed the same as var.mws_permission_assignments except keys with no principal_id are omitted"
  value       = { for k, v in databricks_mws_permission_assignment.mws_permission_assignments : k => v.principal_id if v.principal_id != null }
}
output "mws_permission_assignments_workspace_id" {
  description = "Map of workspace_id values across all mws_permission_assignments, keyed the same as var.mws_permission_assignments except keys with no workspace_id are omitted"
  value       = { for k, v in databricks_mws_permission_assignment.mws_permission_assignments : k => v.workspace_id if v.workspace_id != null }
}

