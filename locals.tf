locals {
  project = {
    "fem-eci-project3" = {
      description = "Example description of project"
    }
  }

  workspace = {
    "fem-eci-workspace3" = {
      description    = "Example automation workspace for Terraform Cloud resources."
      execution_mode = "local"
      project_id     = module.project["fem-eci-project3"].id
    }
  }
}