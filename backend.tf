terraform {
  cloud {
    organization = "opensource-construction"

    workspaces {
      name = "osc-github"
    }
  }
}
