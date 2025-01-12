locals {
  project = {
    "fem-eci-project3" = {
      description = "Example description of project"
    }
  }

  workspace = {

    "fem-eci-workspace3" = {
      description    = "Example automation workspace for Terraform Cloud resources."
      execution_mode = "remote"
      project_id     = module.project["fem-eci-project3"].id
      vcs_repo_identifier = "${var.github_organization_name}/fem-eci-terraform-tfe"
    }

     "fem-eci-github" = {
      description         = "Example automation workspace for GitHub resources."
      execution_mode      = "remote"
      project_id          = module.project["fem-eci-project3"].id
      vcs_repo_identifier = "${var.github_organization_name}/fem-eci-terraform-github"
    }


  }


}
