output "key_arn_primary" {
  description = "ARN of the KMS key in the primary region"
  value       = var.create_keys ? aws_kms_key.primary[0].arn : var.existing_key_arn_primary
}

output "key_arn_failover" {
  description = "ARN of the KMS key in the failover region"
  value       = var.create_keys ? aws_kms_key.failover[0].arn : var.existing_key_arn_failover
}

output "key_id_primary" {
  description = "ID of the KMS key in the primary region"
  value       = var.create_keys ? aws_kms_key.primary[0].key_id : null
}

output "key_id_failover" {
  description = "ID of the KMS key in the failover region"
  value       = var.create_keys ? aws_kms_key.failover[0].key_id : null
}

output "primary_key_arn" {
  description = "ARN of the primary KMS key (alias for backward compatibility)"
  value       = var.create_keys ? aws_kms_key.primary[0].arn : var.existing_key_arn_primary
}

output "failover_key_arn" {
  description = "ARN of the failover KMS key (alias for backward compatibility)"
  value       = var.create_keys ? aws_kms_key.failover[0].arn : var.existing_key_arn_failover
}