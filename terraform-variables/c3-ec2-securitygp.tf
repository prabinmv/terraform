resource "aws_security_group" "vpc-ssh" {
  name        = "vpc-ssh"
  description = "Dev VPc SSH & HTTP"
  ingress {
    description = "Allow Port 22"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress  {
    description = "Allow Port 80"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }


  egress {
    description = "Allow all trafic"
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "vpc-ssh"
  }
}

