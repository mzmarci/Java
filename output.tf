# Outputs from mainvpc module
output "vpc_id" {
  value = module.mainvpc.vpc_id
}

output "public_subnets_id" {
  value = module.mainvpc.public_subnets_id
}

output "private_subnets_id" {
  value = module.mainvpc.private_subnets_id
}

# Outputs from security_group module
output "skinai_security_group_id" {
  value = module.security_group.stack_security_group_id
}

# output "rds_endpoint" {
#   value = module.rds.rds_endpoint
# }

output "rds_instance_id" {
  value = module.rds.rds_instance_id
}
