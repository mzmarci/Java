output "stack_ip" {
  value = [for instance in aws_instance.stack : instance.public_ip]
}