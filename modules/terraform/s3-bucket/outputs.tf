# Output variable definitions

output "name" {
  description = "name (id) of the bucket"
  value       = aws_s3_bucket.s3_bucket.id
}