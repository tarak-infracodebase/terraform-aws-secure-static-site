output "distribution_id" {
  description = "CloudFront distribution ID"
  value       = aws_cloudfront_distribution.main.id
}

output "distribution_arn" {
  description = "CloudFront distribution ARN"
  value       = aws_cloudfront_distribution.main.arn
}

output "distribution_domain_name" {
  description = "CloudFront domain name"
  value       = aws_cloudfront_distribution.main.domain_name
}

output "distribution_hosted_zone_id" {
  description = "CloudFront hosted zone ID"
  value       = aws_cloudfront_distribution.main.hosted_zone_id
}

output "oac_id" {
  description = "Origin Access Control ID"
  value       = aws_cloudfront_origin_access_control.main.id
}

output "oac_arn" {
  description = "Origin Access Control ARN"
  value       = aws_cloudfront_origin_access_control.main.id
}

output "response_headers_policy_id" {
  description = "Security headers policy ID"
  value       = var.enable_security_headers ? aws_cloudfront_response_headers_policy.security_headers[0].id : null
}
