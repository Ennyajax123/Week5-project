resource "aws_instance" "development" {
  ami                    = var.dev-env-ami
  instance_type          = var.dev-env_instance-type
  key_name              = var.dev-env_key_name
  vpc_security_group_ids = [aws_security_group.development.id]

  tags = {
    Name = var.dev-env
  }
}

resource "aws_instance" "production" {
  ami                    = var.prod-env-name
  instance_type          = var.prod_instance_type
  key_name              = var.prod-env_key_name
  vpc_security_group_ids = [aws_security_group.production.id]

  tags = {
    Name = var.prod-env
  }
}