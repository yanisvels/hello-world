resource "tfe_workspace" "test" {
  for_each     = toset(local.workspace_names)
  name         = each.key
  organization = tfe_organization.organization.name
}
