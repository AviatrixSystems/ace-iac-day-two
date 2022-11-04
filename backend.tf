terraform {
  required_version = ">= 1.1.0"
  backend "remote" {
     organization = "NextIaC"
    workspaces {
      name = "ace-iac-day-two"
    }
  }
}
