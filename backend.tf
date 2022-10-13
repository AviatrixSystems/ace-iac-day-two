terraform {
  required_version = ">= 1.1.0"
  backend "remote" {
    organization = "ace-iac-day-two"
    workspaces {
      name = "ace-iac-day-two"
    }
  }
}
