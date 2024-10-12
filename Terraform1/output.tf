output "instance_ip" {
  description = "public ip of the aws instance"
  value       = module.EC2_second_instance.instance_ip_2
}

output "instance_dns" {
  description = "DNS of the aws instance"
  value       = module.EC2_second_instance.instance_dns_2
}