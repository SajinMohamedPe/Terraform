output "instance_ip_2" {
  description = "public ip of the aws instance 2"
  value       = aws_instance.terraform_demo_instance_2.public_ip
}

output "instance_dns_2" {
  description = "DNS of the aws instance 2"
  value       = aws_instance.terraform_demo_instance_2.public_dns
}