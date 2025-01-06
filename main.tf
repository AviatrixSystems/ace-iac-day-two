// ACE-IAC Git Aviatrix Infrastructure

data "aviatrix_spoke_gateway" "egress" {
  gw_name = var.azure_spoke2_name
}

resource "aviatrix_fqdn" "fqdn_filter" {
  fqdn_tag     = "APP-RULES"
  fqdn_mode    = "white"
  fqdn_enabled = true
  gw_filter_tag_list {
    gw_name = data.aviatrix_spoke_gateway.egress.gw_name
  }
  manage_domain_names = false
}

resource "aviatrix_fqdn_tag_rule" "tcp" {
  for_each      = local.egress_rules.tcp
  fqdn_tag_name = aviatrix_fqdn.fqdn_filter.fqdn_tag
  fqdn          = each.key
  protocol      = "tcp"
  port          = each.value
  depends_on    = [aviatrix_fqdn.fqdn_filter]
}

resource "aviatrix_fqdn_tag_rule" "udp" {
  for_each      = local.egress_rules.udp
  fqdn_tag_name = aviatrix_fqdn.fqdn_filter.fqdn_tag
  fqdn          = each.key
  protocol      = "udp"
  port          = each.value
  depends_on    = [aviatrix_fqdn.fqdn_filter]
}
