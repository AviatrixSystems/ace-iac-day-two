terraform {
  required_version = ">= 1.1.0"
  backend "remote" {
    organization = "jshome568"
    workspaces {
      name = "ace-iac-day-two"
    }
  }
}
