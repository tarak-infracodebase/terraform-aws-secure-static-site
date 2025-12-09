variable "enabled" {
  type        = bool
  description = "Enable DNS module"
}

variable "domain_name" {
  type        = string
  description = "Primary domain name"
}

variable "alternate_domain_names" {
  type        = list(string)
  description = "Additional domain names"
  default     = []
}

variable "create_hosted_zone" {
  type        = bool
  description = "Create new Route 53 hosted zone"
  default     = false
}

variable "existing_zone_id" {
  type        = string
  description = "Existing Route 53 zone ID (if not creating new zone)"
  default     = null
}

variable "cloudfront_distribution_domain" {
  type        = string
  description = "CloudFront distribution domain name"
}

variable "cloudfront_distribution_zone_id" {
  type        = string
  description = "CloudFront distribution hosted zone ID"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to resources"
  default     = {}
}
