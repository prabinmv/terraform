output "instance_publicip" {
  description = "EC2 instance public ip"
  value = aws_instance.web.public_ip
}

output "instance_publicdns" {
  description = "EC2 instance public ip"
  value = aws_instance.web.public_dns
}