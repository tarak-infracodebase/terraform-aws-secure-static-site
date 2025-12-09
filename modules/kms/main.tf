terraform {
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = ">= 5.0.0"
      configuration_aliases = [aws.primary, aws.failover]
    }
  }
}

# KMS Key for Primary Region
resource "aws_kms_key" "primary" {
  count = var.create_keys ? 1 : 0

  provider = aws.primary

  description             = "KMS key for S3 bucket encryption in ${var.primary_region}"
  deletion_window_in_days = 30
  enable_key_rotation     = true

  tags = merge(
    var.tags,
    {
      Name   = "${var.alias_name}-primary"
      Region = var.primary_region
    }
  )
}

resource "aws_kms_alias" "primary" {
  count = var.create_keys ? 1 : 0

  provider = aws.primary

  name          = "alias/${var.alias_name}-primary"
  target_key_id = aws_kms_key.primary[0].key_id
}

# KMS Key for Failover Region
resource "aws_kms_key" "failover" {
  count = var.create_keys ? 1 : 0

  provider = aws.failover

  description             = "KMS key for S3 bucket encryption in ${var.failover_region}"
  deletion_window_in_days = 30
  enable_key_rotation     = true

  tags = merge(
    var.tags,
    {
      Name   = "${var.alias_name}-failover"
      Region = var.failover_region
    }
  )
}

resource "aws_kms_alias" "failover" {
  count = var.create_keys ? 1 : 0

  provider = aws.failover

  name          = "alias/${var.alias_name}-failover"
  target_key_id = aws_kms_key.failover[0].key_id
}
