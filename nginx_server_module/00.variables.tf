## Variables

variable "ami_id" {
		description = "ID for AMI for ec2"
		default = "ami-0440d3b780d96b29d"
}

variable "instance_type" {
	description = "instance type for ec2"
	default = "t3.micro"
}

variable "server_name" {
	description = "Name of the web server"
	default = "webserver"
}

variable "environment" {
	description = "enviroment of the aplication"
	default = "test"
}