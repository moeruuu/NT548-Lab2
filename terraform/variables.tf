variable "aws_region" {
  description = "Region for aws"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name for my project"
  type        = string
  default     = "group9"
}

variable "ec2_ami" {
  description = "AMI ID for EC2"
  type        = string
  default     = "ami-0c02fb55956c7d316"
}

variable "my_ip_cidr" {
  description = "Personal IP for SSH"
  type        = string
  default     = "0.0.0.0/0"
}
