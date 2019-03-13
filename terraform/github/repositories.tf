module "repository" "datasets" {
  source = "innovationnorway/repository/github"

  name               = "datasets"
  description        = "Traffic fatality datasets for Austin, TX"
  default_branch     = "master"
  private            = false
  has_issues         = true
  has_projects       = true
  has_wiki           = true
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  topics             = ["data", "traffic", "fatalities"]

  teams = [{
    name       = "data"
    permission = "push"
  }]
}

module "repository" "infra" {
  source = "innovationnorway/repository/github"

  name               = "infra"
  description        = "ScrAPD infrastructure "
  default_branch     = "master"
  private            = false
  has_issues         = true
  has_projects       = true
  has_wiki           = true
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  topics             = ["data", "traffic", "fatalities"]

  teams = [{
    name       = "infrastructure"
    permission = "push"
  }]
}

module "repository" "scrapd" {
  source = "innovationnorway/repository/github"

  name               = "scrapd"
  description        = "Extract data from APD news site."
  homepage_url       = "https://scrapd.github.io/scrapd/"
  default_branch     = "master"
  private            = false
  has_issues         = true
  has_projects       = true
  has_wiki           = true
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  topics             = ["atx", "vision-zero", "scraper"]

  teams = [{
    name       = "scrapper"
    permission = "push"
  }]

  deploy_keys = [
    {
      title     = "CircleCI"
      key       = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDChOCme7GZH0XolowmElJGpRAkF2JYl26OTto+OhIoX1hjJs2ISR5NxrZBWBudZ2MfnQUMQpePteRfA8FZNm9ViHRoIyPxuuj5mEuPULPbrOJpkkDtpwH2bgamn58hjJhdxF0iH5xAvUJuKethjehIDdY7JtwXF+73YhDGd47w2RwUzvfSsa23ZhIWLMXxArhefLuTiAJn8RaDaEWci1GEHJ2Rh2+Kn5GhULmAgjLsI1TRSzpRUWcqiUQTnm88ffWNPad5Q1jxqOCLkoM8owc9jFrJdapzGq4xDH6HHhL12BEffmPMLzH3UJ7WoF6KzbRdM3sRQRz7hivj8ve5EG5z"
      read_only = true
    },
    {
      title     = "Docker Cloud Build"
      key       = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDQAYfAZI6GEoJKZAqsQ4e8uRarcOgCriiFbZUriSpJ11hx9xoMAlclmgnsWcFmjb6QlRcb+3/uKPWae7YbFWaA3+Q0jqprNUWyo7WjIK8YgldgeAPyjNOJKbX3OO/TNeS6zsEY6LEJdSJEQesl3xuRowOy2mrQMt3goPvHVYSZ1h+iCwBmhzOkQ8vt3YXKUCFzLLtp4Is6p4a8xseNCpLsKP4gh6atsyB2DTIzFGxztyjFRGi5h5H7Y3DyvOHlQOWkwzQhWcuZ83c6S6c1VMxnK7NobPgB5FdW4dlJORr+K8jBzb0hoWps5HGOQVyId7ELcvucQSXS9qFV3xHPvy1F"
      read_only = true
    },
    {
      title     = "rgreinho deploy key"
      key       = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAwR4GqsIjr3AzM+52QEURm2mrXUiej0G43Al75RkwU6Enu5JHXIgYwuWhh/56OxG8ZUvqp//vWYTkOY4lf6pu475N7GETnKG+dxOiWR7Vy2QGUV6bp+YcIV0WGjTM8AXWkQr3SXP/pfBaZ/RrUwHU7/7tFtQIsREa6zF6ZsAxSDUrmaqBcwTk0hFoahdI1eZnYEkp4Ll5TySzHFMRBic1Qsm4B/7fk3Wu/ATgniaSGmxVXFiT3mvCl5ktZRO6bnwUY/WzlqDamYjGRl84UGaXH/NBEd0ceZoIZqqgWOuoFSQHwmuKRqf5TsLosjUSltKCOw8k54XaV3awv1pAS6dt"
      read_only = false
    },
  ]
}

module "repository" "scrapdviz" {
  source = "innovationnorway/repository/github"

  name               = "scrapdviz"
  description        = "Visualize Austin traffic fatalities from another angle"
  default_branch     = "master"
  private            = false
  has_issues         = true
  has_projects       = true
  has_wiki           = true
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  topics             = ["dashboard", "statistics"]

  teams = [{
    name       = "frontend"
    permission = "push"
  }]

  deploy_keys = [
    {
      title     = "CircleCI"
      key       = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDGXchNrert1M06UvI6Gm93NEdTqtfKNENxY8aj3QNHx5Yd5LbM9KD8c41AczEEEs6SUYHcHeVEdpvpFlbJqqohFWCKWuUnkefENFCthzY2wYiN6gBBaU9X11Hbm7X/mpFxRvfVyOW3pywOMV0VmI/jrFdEErWleK5pavrjGGTqQVuHyEPhYu2jYsXzwpUKXqsI5QO2VSv2fPf8M3LecZ5PdROUbORBzPvQ2CBUYFO2ow7/GOOSD3W5Aslg44ISxTz+Q3+DMnQR7og+LGe590AsxLtKAvQp9WuEi+IGoAL/hy6xygF2++SL1+WRPHkTCeoIBYIKnpVMDXV5KL2ngQyT"
      read_only = true
    },
  ]
}
