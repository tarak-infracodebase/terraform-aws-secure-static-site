output "website_bucket_id_primary" {
  description = "ID of the primary website S3 bucket"
  value       = aws_s3_bucket.website_primary.id
}

output "website_bucket_id_failover" {
  description = "ID of the failover website S3 bucket"
  value       = aws_s3_bucket.website_failover.id
}

output "website_bucket_arn_primary" {
  description = "ARN of the primary website S3 bucket"
  value       = aws_s3_bucket.website_primary.arn
}

output "website_bucket_arn_failover" {
  description = "ARN of the failover website S3 bucket"
  value       = aws_s3_bucket.website_failover.arn
}

output "website_bucket_regional_domain_name_primary" {
  description = "Regional domain name of the primary website S3 bucket"
  value       = aws_s3_bucket.website_primary.bucket_regional_domain_name
}

output "website_bucket_regional_domain_name_failover" {
  description = "Regional domain name of the failover website S3 bucket"
  value       = aws_s3_bucket.website_failover.bucket_regional_domain_name
}

output "logs_bucket_domain_name" {
  description = "Domain name of the CloudFront logs S3 bucket"
  value       = aws_s3_bucket.logs.bucket_domain_name
}

output "logs_bucket_id" {
  description = "ID of the CloudFront logs S3 bucket"
  value       = aws_s3_bucket.logs.id
}

output "access_logs_bucket_id" {
  description = "ID of the S3 access logs bucket"
  value       = aws_s3_bucket.access_logs.id
}