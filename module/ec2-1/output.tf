output "stack1_ip" {
  value = [for instance in aws_instance.stack1 : instance.public_ip]
}