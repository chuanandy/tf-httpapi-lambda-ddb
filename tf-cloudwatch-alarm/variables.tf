variable "lambda_function_name" {
  description = "The name of the existing Lambda function to monitor."
  type        = string
}

variable "metric_name" {
  description = "The name of the metric to monitor for the CloudWatch alarm."
  type        = string
}

variable "threshold" {
  description = "The threshold value for the CloudWatch alarm."
  type        = number
}

variable "evaluation_periods" {
  description = "The number of periods over which data is evaluated."
  type        = number
}