###################################################
# Terraform Remote States (External Dependencies)
###################################################
data "terraform_remote_state" "this" {
  for_each = local.config.remote_states

  backend = "remote"
  config = {
    organization = each.value.organization
    workspaces = {
      name = each.value.workspace
    }
  }
}