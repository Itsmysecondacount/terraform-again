##Tfstate

terraform {
	backend "s3" {
		bucket = "terraform-bucket-for-aws-edleap"
		region = "us-east-1"
		key = "terraform/terraform.tfstate"
	}
}

##Modulos
module "nginx_server_dev" {
	source = "./nginx_server_module"
	
	ami_id				= "ami-0440d3b780d96b29d"
	instance_type	= "t3.medium"
	server_name		= "nginx-server-dev"
	environment		= "dev"
}

module "nginx_server_qa" {
	source = "./nginx_server_module"
	
	ami_id				= "ami-0440d3b780d96b29d"
	instance_type	= "t3.large"
	server_name		= "nginx-server-qa"
	environment		= "qa"
}

##Output

output "public_ip_dev" {
	description = "Ip public from the instance ec2"
	value = module.nginx_server_dev.public_ip
}

output "server_public_dns_dev" {
	description = "public dns from ec2"
	value = module.nginx_server_dev.server_public_dns
}

output "public_ip_qa" {
	description = "Ip public from the instance ec2"
	value = module.nginx_server_qa.public_ip
}

output "server_public_dns_qa" {
	description = "public dns from ec2"
	value = module.nginx_server_qa.server_public_dns
}

