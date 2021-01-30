# outbound-proxy

## Usage

```
module "proxy" {
  name = "proxy"
  network_allowed_cidr = "10.0.0.0/22"
  private_subnet_ids = ["subnet-xxx"]
  public_subnet_ids = ["subnet-xx"]
  vpc_id = "vpc-xxx"
  whitelisted_domains = ["example.com", "example2.com"]

  permissions_boundary = "some_boundary_arn"

}
```

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| custom\_dns | Custom DNS servers, set to 'default' to not use a custom dns server | `string` | `"default"` | no |
| instance\_type | WebServer EC2 instance type (e.g t3.medium) | `string` | `"t3.medium"` | no |
| latest\_ami\_id | AMI ID to use, default to latest AMI Amazon linux2 | `string` | `"/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"` | no |
| name | Name for this cloudformation resource | `string` | n/a | yes |
| network\_allowed\_cidr | CIDR allowed in Proxy Security Group. The allowed block size is between a /32 netmask and /8 netmask | `string` | `"172.31.0.0/16"` | no |
| permissions\_boundary | ARN of the IAM policy to apply to iam roles created as permission boundary policy | `string` | `""` | no |
| private\_subnet\_ids | Private SubnetIDs where the Network LoadBalancer will be placed (Select min 2 max 3) | `list(string)` | n/a | yes |
| proxy\_port | Port to connect to proxy with | `number` | `3128` | no |
| public\_subnet\_ids | Public SubnetIDs where the proxy will be placed (Select min 2 max 3) | `list(string)` | n/a | yes |
| ssh\_key\_name | Key pair name to use for ssh key to the instance | `string` | `""` | no |
| vpc\_id | VPC ID | `string` | n/a | yes |
| whitelisted\_domains | List of domain names to whitelist for outgoing proxy | `list(string)` | <pre>[<br>  ".amazonaws.com",<br>  ".debian.org"<br>]</pre> | no |

## Outputs

No output.

