output "instance_publicip" {
  description = "EC2 instance public ip"
  value = aws_instance.web.public_ip
}

output "instance_publicdns" {
  description = "EC2 instance public ip"
  value = aws_instance.web.public_dns
}

output "for_output_list" {
  description = "For Loop with List"
  value = [for instance in aws_instance.web: instance.public_dns]
}

output "for_output_map" {
  description = "For Loop with Map"
  value = {for instance in aws_instance.web: instance.id =>instance.public_dns}
}