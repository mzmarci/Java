output "rds_instance_id" {
  value = aws_db_instance.db_instance.id
}

output "db_subnet_group" {
  value = aws_db_subnet_group.db_subnet_group.name
}

# output "rds_arn" {
#   value = aws_db_instance.this.arn
# }
