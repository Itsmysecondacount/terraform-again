output "public_ip" {
	description = "Ip public from the instance ec2"
	value = aws_instance.nginx-server.public_ip
}

output "server_public_dns" {
	description = "public dns from ec2"
	value = aws_instance.nginx-server.public_dns
}