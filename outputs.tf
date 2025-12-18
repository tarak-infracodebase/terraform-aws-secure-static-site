output "cloudfront_distribution_id" {
  description = "ID of the CloudFront distribution"
  value       = module.cloudfront.distribution_id
}

output "cloudfront_distribution_domain_name" {
  description = "Domain name of the CloudFront distribution"
  value       = module.cloudfront.distribution_domain_name
}

output "cloudfront_distribution_arn" {
  description = "ARN of the CloudFront distribution"
  value       = module.cloudfront.distribution_arn
}

output "website_bucket_name_primary" {
  description = "Name of the primary website S3 bucket"
  value       = module.s3.website_bucket_id_primary
}

output "website_bucket_name_failover" {
  description = "Name of the failover website S3 bucket"
  value       = module.s3.website_bucket_id_failover
}

output "certificate_arn" {
  description = "ARN of the ACM certificate (if domain is enabled)"
  value       = var.enable_domain ? module.dns[0].certificate_arn : null
}

output "hosted_zone_id" {
  description = "Route 53 hosted zone ID (if domain is enabled)"
  value       = var.enable_domain ? module.dns[0].hosted_zone_id : null
}

output "hosted_zone_name_servers" {
  description = "Name servers for the hosted zone (if created)"
  value       = var.enable_domain && var.create_route53_zone ? module.dns[0].hosted_zone_name_servers : []
}

output "kms_key_arn_primary" {
  description = "ARN of the KMS key in the primary region"
  value       = local.kms_key_arn_primary
}

output "kms_key_arn_failover" {
  description = "ARN of the KMS key in the failover region"
  value       = local.kms_key_arn_failover
}