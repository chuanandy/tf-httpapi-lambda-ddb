resource "aws_cloudwatch_metric_alarm" "lambda_error_alarm" {
  alarm_name          = "${local.name_prefix}-lambda-error-alarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = var.evaluation_periods
  metric_name        = var.metric_name
  namespace          = "AWS/Lambda"
  period             = 60
  statistic          = "Sum"
  threshold          = var.threshold
  alarm_description  = "This alarm monitors the Lambda function for errors."
  dimensions = {
    FunctionName = var.lambda_function_name
  }

  alarm_actions = [] # Add SNS topic ARN or other actions here
}

locals {
  name_prefix = "andyhon2-16"
}