#terraform {
 # required_version = ">= 1.1.0"
#  backend "remote" {
   #   organization = "Aviatrix-swelsh"
   # workspaces {
   #   name = "ace-iac-day-two"
   # }
#  }
#}

terraform {
  cloud {
    organization = "Aviatrix-swelsh"

    workspaces {
      name = "ace-iac-day-two"
    }
  }
}
