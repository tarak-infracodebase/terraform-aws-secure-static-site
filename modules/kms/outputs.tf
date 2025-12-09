output "key_arn_primary" {
  description = "ARN of KMS key in primary region"
  value       = var.create_keys ? aws_kms_key.primary[0].arn : var.existing_key_arn_primary
}

output "key_arn_failover" {
  description = "ARN of KMS key in failover region"
  value       = var.create_keys ? aws_kms_key.failover[0].arn : var.existing_key_arn_failover
}

output "key_id_primary" {
  description = "ID of KMS key in primary region"
  value       = var.create_keys ? aws_kms_key.primary[0].key_id : null
}

output "key_id_failover" {
  description = "ID of KMS key in failover region"
  value       = var.create_keys ? aws_kms_key.failover[0].key_id : null
}
