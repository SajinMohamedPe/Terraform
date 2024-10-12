output "instance_ip" {
  description = "public ip of the aws instance"
  value       = aws_instance.terraform_demo_instance.public_ip
}

output "instance_dns" {
  description = "DNS of the aws instance"
  value       = aws_instance.terraform_demo_instance.public_dns
}