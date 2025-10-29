output "instance_public_ip" { value = aws_instance.wp.public_ip }
output "elastic_ip"         { value = try(aws_eip.wp[0].public_ip, null) }
output "ssh_hint" {
  value = "ssh -i ../exemplifi-wp -p 2222 ubuntu@${try(aws_eip.wp[0].public_ip, aws_instance.wp.public_ip)}"
}
