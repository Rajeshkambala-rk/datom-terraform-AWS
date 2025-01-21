resource "aws_wafv2_web_acl" "main" {
  name        = "${var.environment}-web-acl"
  description = "WAF Web ACL with Shield protection"
  scope       = "REGIONAL"

  default_action {
    allow {}
  }

  rule {
    name     = "AWSManagedRulesCommonRuleSet"
    priority = 1

    override_action {
      none {}
    }

    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesCommonRuleSet"
        vendor_name = "AWS"
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name               = "AWSManagedRulesCommonRuleSetMetric"
      sampled_requests_enabled  = true
    }
  }

  rule {
    name     = "RateLimit"
    priority = 2

    action {
      block {}
    }

    statement {
      rate_based_statement {
        limit              = 2000
        aggregate_key_type = "IP"
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name               = "RateLimitRule"
      sampled_requests_enabled  = true
    }
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name               = "${var.environment}-web-acl"
    sampled_requests_enabled  = true
  }

  tags = {
    Environment = var.environment
  }
}

# resource "aws_shield_protection" "main" {
#   name         = "${var.environment}-shield-protection"
#   resource_arn = var.cloudfront_distribution_arn

#   tags = {
#     Environment = var.environment
#   }
# }