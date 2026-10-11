resource "databricks_mws_permission_assignment" "mws_permission_assignments" {
  for_each = var.mws_permission_assignments

  permissions  = each.value.permissions
  principal_id = each.value.principal_id
  workspace_id = each.value.workspace_id
}

