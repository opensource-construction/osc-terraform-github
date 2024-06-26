locals {
  repo = {
    "osc-terraform-tfe" = {
      description = "os.c terraform automations"
      name        = "osc-terraform-tfe"
      owner       = var.owner

      gitignore_template   = "Terraform"
      vulnerability_alerts = true
      topics               = ["terraform"]

      visibility = "public"
      has_issues = true
      teams      = { "devops" : "maintain" }

    }
    "osc-terraform-github" = {
      description = "os.c github automations"
      name        = "osc-terraform-github"
      owner       = var.owner

      gitignore_template   = "Terraform"
      topics               = ["terraform", "github"]
      vulnerability_alerts = true

      visibility = "public"
      has_issues = true
      teams      = { "devops" : "maintain" }
    }
  }
}
