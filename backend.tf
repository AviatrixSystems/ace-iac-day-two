terraform {
  required_version = ">= 1.2.0"
  backend "remote" {
    # organization = "<replace-with-your-Terraform-Cloud-organization-and-uncomment>"
    workspaces {
      name = "ace-iac-day-two"
    }
  }
}
