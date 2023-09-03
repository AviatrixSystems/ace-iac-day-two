terraform {
  required_version = ">= 1.1.0"
  backend "remote" {
    organization = "org-MRqfSKsQKhgpw3dN"
    workspaces {
      name = "ace-iac-day-two"
    }
  }
}
