resource "aws_cloudwatch_alarm" "lambda_alarm" {
  alarm_name          = "${local.name_prefix}-lambda-alarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = var.evaluation_periods
  metric_name        = var.metric_name
  namespace          = "AWS/Lambda"
  period             = 60
  statistic          = "Average"
  threshold          = var.threshold
  alarm_description  = "This alarm monitors the Lambda function for high error rates."
  dimensions = {
    FunctionName = var.lambda_function_name
  }

  alarm_actions = [] # Add SNS topic ARN or other actions here
}

output "cloudwatch_alarm_arn" {
  value = aws_cloudwatch_alarm.lambda_alarm.arn
}

output "cloudwatch_alarm_state" {
  value = aws_cloudwatch_alarm.lambda_alarm.state
}