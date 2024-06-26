#### FIREWALL

resource "aws_security_group" "nginx-server-sg" {
	name = "nginx-server-sg-${var.environment}"
	description = "Security group allow ssh and http access"

	ingress {
		from_port = 22
		to_port = 22
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}

	ingress {
		from_port = 80
		to_port = 80
		protocol = "tcp"
		cidr_blocks = [ "0.0.0.0/0" ]
	}

	egress {
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}

	tags = {
		Name				= "nginx-server-sg"
		Environment	= "${var.environment}"
		Owner 			= "xdicarousxd@gmail.com"
		Team				= "DevOps"
		Project			= "TerraformInit"
	}	
}
