variable "create_keys" {
  type        = bool
  description = "Whether to create new KMS keys"
}

variable "primary_region" {
  type        = string
  description = "Primary AWS region"
}

variable "failover_region" {
  type        = string
  description = "Failover AWS region"
}

variable "existing_key_arn_primary" {
  type        = string
  description = "ARN of existing KMS key in primary region (if not creating new keys)"
  default     = null
}

variable "existing_key_arn_failover" {
  type        = string
  description = "ARN of existing KMS key in failover region (if not creating new keys)"
  default     = null
}

variable "alias_name" {
  type        = string
  description = "Base name for KMS key aliases"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to KMS keys"
  default     = {}
}
