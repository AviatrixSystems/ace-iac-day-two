terraform {
  required_version = ">= 1.1.0"
  backend "remote" {
    # organization = "MCS_NetOPs"
    workspaces {
      name = "ace-iac-day-two"
    }
  }
}
