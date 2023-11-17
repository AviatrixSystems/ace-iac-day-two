terraform {
  required_version = ">= 1.1.0"
  backend "remote" {
    # organization = "AlwinSam-Avx"
    workspaces {
      name = "ace-iac-day-two"
    }
  }
}
