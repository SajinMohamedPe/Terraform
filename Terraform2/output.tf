output "instance_ip" {
  description = "public ip of the aws instance"
  value = aws_instance.workspace_vm_dev[0].public_ip
}

output "instance_dns" {
  description = "DNS of the aws instance"
  value = aws_instance.workspace_vm_dev[0].public_dns
}