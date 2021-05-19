locals {
  tags = {
    Name      = var.name,
    Terraform = "True"
  }
}

data "aws_caller_identity" "current" {}


resource "aws_cloudformation_stack" "proxy" {
  name = var.name
  parameters = {
    VpcId               = var.vpc_id
    WhitelistedDomains  = join(",", var.whitelisted_domains)
    CustomDNS           = var.custom_dns
    ProxyPort           = var.proxy_port
    InstanceType        = var.instance_type
    LatestAmiId         = var.latest_ami_id
    KeyName             = var.ssh_key_name
    PermissionsBoundary = var.permissions_boundary
    PrivateSubnetIDs    = join(",", var.private_subnet_ids)
    PublicSubnetIDs     = join(",", var.public_subnet_ids)
    NetworkAllowedCIDR  = var.network_allowed_cidr
  }
  capabilities  = ["CAPABILITY_NAMED_IAM"]
  template_body = file("./outbound-proxy.yaml")
}
