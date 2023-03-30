resource "aws_eip" "my-application-elastic-ip" {
  vpc = true
}

resource "aws_eip_association" "my-application-elastic-ip-association" {
  instance_id   = aws_instance.my-application_ec2.id
  allocation_id = aws_eip.my-application-elastic-ip.id
}