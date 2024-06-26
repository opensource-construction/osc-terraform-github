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
}
