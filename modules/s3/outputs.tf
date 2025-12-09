output "website_bucket_id_primary" {
  description = "Primary website bucket name"
  value       = aws_s3_bucket.website_primary.id
}

output "website_bucket_id_failover" {
  description = "Failover website bucket name"
  value       = aws_s3_bucket.website_failover.id
}

output "website_bucket_arn_primary" {
  description = "Primary website bucket ARN"
  value       = aws_s3_bucket.website_primary.arn
}

output "website_bucket_arn_failover" {
  description = "Failover website bucket ARN"
  value       = aws_s3_bucket.website_failover.arn
}

output "website_bucket_regional_domain_name_primary" {
  description = "Primary S3 bucket regional domain name"
  value       = aws_s3_bucket.website_primary.bucket_regional_domain_name
}

output "website_bucket_regional_domain_name_failover" {
  description = "Failover S3 bucket regional domain name"
  value       = aws_s3_bucket.website_failover.bucket_regional_domain_name
}

output "logs_bucket_id" {
  description = "Logs bucket name"
  value       = aws_s3_bucket.logs.id
}

output "logs_bucket_domain_name" {
  description = "Logs bucket domain name"
  value       = aws_s3_bucket.logs.bucket_domain_name
}
