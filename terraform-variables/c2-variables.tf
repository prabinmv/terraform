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

variable "instance_type_list" {
  description = "EC2 Instance Type List"
  type = list(string)
  default = [ "t2.micro","t3.micro" ]
}

variable "instance_type_map" {
  description = "EC2 Instance Type Map"
  type = map(string)
  default = {
    "dev" = "t2.micro",
    "prod" = "t3.micro"
  }
}