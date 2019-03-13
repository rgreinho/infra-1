module "terraform_team" data {
  source = "innovationnorway/team/github"

  name        = "data"
  description = "Manage the ScrAPD data sets"
  privacy     = "closed"
  maintainers = ["rgreinho"]
}

module "terraform_team" frontend {
  source = "innovationnorway/team/github"

  name        = "Frontend"
  description = "Design the visual parts of the ScrAPD projects"
  privacy     = "closed"
  maintainers = ["rgreinho"]
}

module "terraform_team" infrastructure {
  source = "innovationnorway/team/github"

  name        = "Infrastructure"
  description = "Manage the ScrAPD infrstructure"
  privacy     = "closed"
  maintainers = ["rgreinho"]
}

module "terraform_team" scrapper {
  source = "innovationnorway/team/github"

  name        = "Scrapper"
  description = "Maintains the APD scrapper"
  privacy     = "closed"
  maintainers = ["rgreinho"]
  members     = ["mrengler"]
}
