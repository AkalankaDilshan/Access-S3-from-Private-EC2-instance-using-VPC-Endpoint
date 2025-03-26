resource "aws_security_group" "ec2_sg" {
  name        = var.security_group_name
  description = "allow SSH,HTTP,HTTPS"
  vpc_id      = var.vpc_id
  tags = {
    Name = var.security_group_name
  }
}

