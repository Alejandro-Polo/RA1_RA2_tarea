output "public_ip" {
  value = aws_eip.static_ip.public_ip
}

output "ssh_command" {
  value = "ssh -i ra1-key.pem ec2-user@${aws_eip.static_ip.public_ip}"
}
