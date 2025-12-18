variable "enabled" {
  type        = bool
  description = "Enable DNS module resources"
  default     = true
}

variable "domain_name" {
  type        = string
  description = "Primary domain name for the website"
}

variable "alternate_domain_names" {
  type        = list(string)
  description = "List of alternate domain names (CNAMEs) for CloudFront"
  default     = []
}

variable "create_hosted_zone" {
  type        = bool
  description = "Create a new Route 53 hosted zone for the domain"
  default     = false
}

variable "existing_zone_id" {
  type        = string
  description = "Existing Route 53 hosted zone ID (required if create_hosted_zone is false)"
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
  description = "Tags to apply to all resources"
  default     = {}
}