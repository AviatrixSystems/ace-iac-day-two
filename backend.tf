terraform {
  required_version = ">= 1.1.0"
  backend "remote" {
    organization = "aviatrix-iac12312"
    workspaces {
      name = "ace-iac-day-two"
    }
  }
}
