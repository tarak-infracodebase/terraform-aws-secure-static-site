bucket_name = "secure-web-demo-12345"

# Optional: Enable custom domain
enable_domain = false

# Regions
primary_region  = "us-east-1"
failover_region = "us-west-2"

# Enable features
enable_failover     = true
enable_replication  = true
logging_enabled     = true

# Security
enable_security_headers = true
enable_spa_routing     = false

# Tags
tags = {
  Environment = "demo"
  Project     = "secure-static-website"
  Owner       = "infrastructure-team"
}