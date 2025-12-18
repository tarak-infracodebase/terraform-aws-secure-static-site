variable "create_keys" {
  type        = bool
  description = "Create KMS keys for encryption"
  default     = true
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
  description = "Existing KMS key ARN for primary region"
  default     = null
}

variable "existing_key_arn_failover" {
  type        = string
  description = "Existing KMS key ARN for failover region"
  default     = null
}

variable "alias_name" {
  type        = string
  description = "Name for KMS key aliases"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to all resources"
  default     = {}
}