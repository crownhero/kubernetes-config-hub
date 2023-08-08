provider "aws" {
  region = "eu-west-2"
}
resource "aws_instance" "kops-test" {
  ami                    = "ami-007ec828a062d87a5"
  instance_type          = "t2.micro"
  availability_zone      = "eu-west-2a"
  subnet_id              = "subnet-05a1e45d24cf68858"
  key_name               = "waverlite-new-instance"
  vpc_security_group_ids = ["sg-0ff44f845adadf96f"]
  tags = {
    Name = "kops"
  }
}
output "PublicIP" {
    value = aws_instance.kops-test.public_ip
}