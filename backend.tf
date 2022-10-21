terraform {
  required_version = ">= 1.1.0"
  backend "remote" {
    organization = "chip-aviatrix-tf"
    workspaces {
      name = "ace-iac-day-two"
    }
  }
}
