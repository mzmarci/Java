resource "aws_db_instance" "db_instance" {
  allocated_storage       = var.allocated_storage
  engine                  = var.engine
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  db_name                 = var.db_name
  username                = var.username
  password                = var.password
  parameter_group_name    = var.parameter_group_name
  publicly_accessible     = var.publicly_accessible
  vpc_security_group_ids  = var.security_group_ids
  db_subnet_group_name    = var.db_subnet_group_name
  storage_type            = var.storage_type
  multi_az                = var.multi_az
  backup_retention_period = var.backup_retention_period
  skip_final_snapshot     = var.skip_final_snapshot
  tags                    = var.tags

}

# resource "aws_db_subnet_group" "this" {
#   name       = var.db_subnet_group_name
#   subnet_ids = var.subnet_ids
#   tags       = var.tags
# }

resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "stack-db-subnet-group"
  subnet_ids = var.subnet_ids
  tags = {
    Name        = "Example DB Subnet Group"
    Environment = "Production"
  }
}
