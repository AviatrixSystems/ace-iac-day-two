# Software engineers modify this file only
locals {
  egress_rules = {
    tcp = {
      "*.aviatrix.com" = "443"
      "aviatrix.com"   = "80"
      "*.ubuntu.com"   = "80"
    }
    udp = {
      "dns.google.com" = "53"
    }
  }
}
