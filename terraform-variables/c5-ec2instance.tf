data "aws_availability_zones" "myazone" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  # instance_type = var.instance_type_list[0]
  # instance_type = var.instance_type_map["dev"]
  user_data = file("${path.module}/app1-install.sh")
  key_name = var.instance_keypair
  for_each = toset(data.aws_availability_zones.myazone.names)
  availability_zone = each.key
  count = 2
  tags = {
    Name = "ec2-demo-${count.index}"
  }
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id]
}