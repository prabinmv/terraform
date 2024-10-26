variable "aws_region" {
  description = "Region in which AWS REsource to be created"
  type = string
  default = "us-east-1"
}

variable "instance_type" {
  description = "ec2 instance type"
  type = string
  default = "t2.micro"
}

variable "instance_keypair" {
  description = "AWS EC2 Key pair "
  type = string
  default = "terraform-key"
}