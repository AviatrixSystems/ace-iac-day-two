terraform {
  required_version = ">= 1.1.0"
  backend "remote" {
    organization = "Aviatrix-SST-Kam"
    workspaces {
      name = "ace-iac-day-two"
    }
  }
}
