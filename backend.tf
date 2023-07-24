terraform {
  required_version = ">= 1.1.0"
  backend "remote" {
    organization = "unes86"
    workspaces {
      name = "ace-iac-day-two"
    }
  }
}
