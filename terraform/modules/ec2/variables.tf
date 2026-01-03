variable "project_name" {
  type        = string
}

variable "public_subnet_id" {
  type        = string
}

variable "private_subnet_id" {
  type        = string
}

variable "vpc_id" {
  type        = string
}

variable "ami" {
  description = "AMI ID of EC2"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Name ofAWS key pair"
  type        = string
}

variable "my_ip_cidr" {
  description = "Personal IP for SSH"
  type        = string
}

