resource "aws_instance" "web" {
  ami           = "ami-02457590d33d576c3"
  instance_type = "t2.micro"
  user_data = file("${path.module}/app1-install.sh")

  tags = {
    Name = "ec2-demo"
  }
}

