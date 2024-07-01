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

    "osc-terraform-cloudflare-dns" = {
      description = "os.c cloudflare dns automations"
      name        = "osc-terraform-cloudflare-dns"
      owner       = var.owner

      gitignore_template   = "Terraform"
      topics               = ["terraform", "cloudflare"]
      vulnerability_alerts = true

      visibility = "public"
      has_issues = true
      teams      = { "devops" : "maintain" }
    }

    "website" = {
      description = "os.c website, content and design components"
      name        = "website"
      owner       = var.owner

      gitignore_template   = "Node"
      topics               = ["opensource", "nextjs", "react", "storybook"]
      vulnerability_alerts = true

      visibility      = "public"
      has_issues      = true
      has_discussions = true

      license_template = "mit"
      teams            = { "web" : "maintain" }
      homepage_url     = "https://opensource.construction"

      enable_pages = true
      pages_branch = "main"
      pages_cname  = "design.opensource.construction"
      pages_path   = "/"
    }

    "answer" = {
      description = "apache answer for os.c"
      name        = "answer"
      owner       = var.owner

      gitignore_template   = "None"
      topics               = ["opensource", "apache-answer", "docker"]
      vulnerability_alerts = true

      visibility      = "public"
      has_issues      = true
      has_discussions = true

      license_template = "apache-2.0"
      teams            = { "web" : "maintain" }
      homepage_url     = "https://answer.opensource.construction"
    }
  }
}
