terraform {
  required_version = ">= 1.1.0"
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "netops2023"
    workspaces {
      name = "ace-iac-day-two"
    }
  }
}
