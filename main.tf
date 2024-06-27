module "repository" {
  for_each = local.repo

  source  = "ALT-F4-LLC/repository/github"
  version = "0.11.0"

  description          = each.value.description
  gitignore_template   = each.value.gitignore_template
  name                 = each.value.name
  owner                = var.owner
  topics               = each.value.topics
  visibility           = each.value.visibility
  has_issues           = each.value.has_issues
  has_discussions      = try(each.value.has_discussions, false)
  teams                = each.value.teams
  vulnerability_alerts = each.value.vulnerability_alerts

  license_template = try(each.value.license_template, "mit")
  homepage_url     = try(each.value.homepage_url, null)

  enable_pages     = try(each.value.enable_pages, false)
  pages_branch     = try(each.value.pages_branch, null)
  pages_build_type = try(each.value.pages_build_type, "workflow")
  pages_cname      = try(each.value.pages_cname, null)
  pages_path       = try(each.value.pages_path, null)
}
