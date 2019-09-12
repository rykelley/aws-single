output "address" {
  value       = aws_db_instance.example.address
  description = "connect to the DB endpoint"
}

output "port" {
  value       = aws_db_instance.example.port
  description = "get port"
}
