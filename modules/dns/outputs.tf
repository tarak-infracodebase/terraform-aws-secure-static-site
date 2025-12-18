output "certificate_arn" {
  description = "ARN of the ACM certificate"
  value       = var.enabled ? aws_acm_certificate_validation.main[0].certificate_arn : null
}

output "hosted_zone_id" {
  description = "Route 53 hosted zone ID"
  value       = var.enabled && var.create_hosted_zone ? aws_route53_zone.main[0].zone_id : var.existing_zone_id
}

output "hosted_zone_name_servers" {
  description = "Name servers for the hosted zone"
  value       = var.enabled && var.create_hosted_zone ? aws_route53_zone.main[0].name_servers : []
}

output "domain_validation_options" {
  description = "Domain validation options for ACM certificate"
  value       = var.enabled ? aws_acm_certificate.main[0].domain_validation_options : []
}

output "dns_query_log_group_name" {
  description = "CloudWatch log group name for DNS queries"
  value       = var.enabled && var.create_hosted_zone ? aws_cloudwatch_log_group.dns_queries[0].name : null
}