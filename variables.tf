variable "region" {
  default = "us-east-1"
}

variable "name" {
  default = "my-application_ec2"
}

variable "env" {
  default = "prod"
}

variable "ami" {
  default = "ami-005f9685cb30f234b"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_pair" {
  default = "ec2-my-application-key"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "public_subnet_availability_zones" {
  type = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1e", "us-east-1f"]
}

data "http" "myip" {
  url = "http://ipv4.icanhazip.com"
}