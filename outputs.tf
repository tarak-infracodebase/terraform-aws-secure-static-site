output "cloudfront_domain_name" {
  description = "Domain name of the CloudFront distribution"
  value       = module.cloudfront.distribution_domain_name
}

output "cloudfront_distribution_id" {
  description = "ID of the CloudFront distribution"
  value       = module.cloudfront.distribution_id
}

output "website_bucket_name" {
  description = "Name of the primary S3 bucket containing website content"
  value       = module.s3.website_bucket_id_primary
}

output "logging_bucket_name" {
  description = "Name of the S3 bucket containing CloudFront logs"
  value       = module.s3.logs_bucket_id
}

output "route53_nameservers" {
  description = "Nameservers for the Route 53 hosted zone (if created)"
  value       = var.enable_domain && var.create_route53_zone ? module.dns[0].zone_nameservers : null
}
