terraform {
  required_version = ">= 1.1.0"
  backend "remote" {
    organization = "aviatrix-iac_zhangjian"
    workspaces {
      name = "ace-iac-day-two"
    }
  }
}
