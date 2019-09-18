output "all_arns" {
  value       = values(aws_iam_user)[*].arn
  description = "The ARNS for all the IAM users added"
}
