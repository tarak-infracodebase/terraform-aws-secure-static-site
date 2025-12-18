# Terraform Provider Configuration Fix

## Problem
Modules `dns_zone` and `dns_records` are missing required provider configuration for `aws.us_east_1`.

## Solution
Add the `providers` block to both modules:

### For dns_zone module (around line 133):
```hcl
module "dns_zone" {
  source = "..." # your module source

  providers = {
    aws.us_east_1 = aws.us_east_1
  }

  # ... rest of your module configuration
}
```

### For dns_records module (around line 166):
```hcl
module "dns_records" {
  source = "..." # your module source

  providers = {
    aws.us_east_1 = aws.us_east_1
  }

  # ... rest of your module configuration
}
```

## Why This is Needed
- ACM certificates for CloudFront must be created in us-east-1 region
- Modules requiring specific provider aliases need explicit provider passing
- The `aws.us_east_1` provider is already configured in your root main.tf