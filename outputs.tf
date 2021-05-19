output "EgressIp1" {
  description = "Outgoing IP Addresses"
  value       = aws_cloudformation_stack.proxy.outputs.EgressIP1
}

output "EgressIp2" {
  description = "Outgoing IP Addresses"
  value       = aws_cloudformation_stack.proxy.outputs.EgressIP2
}

output "EgressIp3" {
  description = "Outgoing IP Addresses"
  value       = aws_cloudformation_stack.proxy.outputs.EgressIP3
}

output "LinuxProxySettings" {
  description = "Proxy URL environment variable to export"
  value       = aws_cloudformation_stack.proxy.outputs.LinuxProxySettings
}

output "OutboundProxyRomain" {
  description = "Domain name of proxy load balancer"
  value       = aws_cloudformation_stack.proxy.outputs.OutboundProxyDomain
}

output "OutboundProxyPor" {
  description = "Accessible port for proxy load balancer"
  value       = aws_cloudformation_stack.proxy.outputs.OutboundProxyPort
}