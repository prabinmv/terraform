resource "aws_instance" "web" {
  ami           = "ami-06b21ccaeff8cd686"
  instance_type = "t2.micro"
  user_data = file("${path.module}/app1-install.sh")

  tags = {
    Name = "ec2-demo"
  }
}