resource "aws_instance" "my-application_ec2" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_pair

  tags = {
    Name        = var.name
    Environment = var.env
    Provisioner = "Terraform"
  }

  vpc_security_group_ids = [
    aws_security_group.my-application-security-group.id,
  ]

  user_data = file("install.sh")
}