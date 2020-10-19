variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "name" {
  type        = string
  description = "Name for this cloudformation resource"
}

variable "whitelisted_domains" {
  type        = list(string)
  description = "List of domain names to whitelist for outgoing proxy"
  default     = [".amazonaws.com", ".debian.org"]
}

variable "custom_dns" {
  type        = string
  description = "Custom DNS servers, set to 'default' to not use a custom dns server"
  default     = "default"
}

variable "proxy_port" {
  type        = number
  description = "Port to connect to proxy with"
  default     = 3128
}

variable "instance_type" {
  type        = string
  description = "WebServer EC2 instance type (e.g t3.medium)"
  default     = "t3.medium"
}

variable "latest_ami_id" {
  type        = string
  description = "AMI ID to use, default to latest AMI Amazon linux2"
  default     = " /aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

variable "ssh_key_name" {
  type        = string
  description = "Key pair name to use for ssh key to the instance"
  default     = ""
}

variable "permissions_boundary" {
  type        = string
  description = "ARN of the IAM policy to apply to iam roles created as permission boundary policy"
  default     = ""
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "Private SubnetIDs where the Network LoadBalancer will be placed (Select min 2 max 3)"
}

variable "public_subnet_ids" {
  type        = list(string)
  description = "Public SubnetIDs where the proxy will be placed (Select min 2 max 3)"
}

variable "network_allowed_cidr" {
  type        = string
  description = "CIDR allowed in Proxy Security Group. The allowed block size is between a /32 netmask and /8 netmask"
  default     = "172.31.0.0/16"
}