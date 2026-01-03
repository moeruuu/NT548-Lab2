variable "aws_region" {
  description = "Region for aws"
  type = string
  default = "us-east-1"
}

variable "project_name" {
  description = "Name for my project"
  type = string
  default = "group9"
}

variable "ec2_ami" {
  description = "AMI ID for EC2"
  type        = string
}

variable "ec2_key_name" {
  description = "Name of AWS key pair"
  type        = string
}

variable "my_ip_cidr" {
  description = "Personal IP for SSH"
  type        = string
}
