output "alb_dns_name" {
  description = "DNS name of the ALB"
  value       = aws_lb.stack-app_lb.dns_name
}

# output "asg_name" {
#   description = "Name of the Auto Scaling Group"
#   value       = aws_autoscaling_group.stack-app_asg.name
# }

output "target_group_arn" {
  description = "ARN of the Target Group"
  value       = aws_lb_target_group.stack-app_tg.arn
}