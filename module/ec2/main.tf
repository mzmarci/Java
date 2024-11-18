resource "aws_instance" "stack" {
  count                       = var.instance_count
  ami                         = var.ec2_ami
  instance_type               = var.ec2_instance_type
  key_name                    = var.ec2_key_name
  vpc_security_group_ids      = var.vpc_security_group_ids
  subnet_id                   = element(var.public_subnets_id, count.index)
  associate_public_ip_address = true
  user_data                   = var.user_data


  tags = {
    Name = "Stack"
    Unit = "PROD"
  }
}