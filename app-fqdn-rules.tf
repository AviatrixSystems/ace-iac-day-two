# Software engineers modify this file only
# TEST TEST TEST TEST test test
locals {
  egress_rules = {
    tcp = {
      "*.aviatrix.com" = "443"
      "aviatrix.com"   = "80"
      ".ubuntu.com"    = "80"
    }
    udp = {
      "dns.google.com" = "53"
    }
  }
}
