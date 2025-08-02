terraform {
  required_version = ">= 1.1.0"
  backend "remote" {
    organization = "daverick-encluna-org"
    workspaces {
      name = "ace-iac-day-two"
    }
  }
}
