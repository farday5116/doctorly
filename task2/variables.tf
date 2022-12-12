variable "aws_access_key" {
  description = "AWS IAM Access Key"
}

variable "aws_secret_key" {
  description = "AWS IAM Secret Key"
}

variable "region" {
  description = "AWS Region"
  default     = "eu-west-1" 
}

variable "az_2" {
  description = "Second AZ"
  default     = "eu-west-1b" 
}

variable "app" {
  description = "App name"
  default     = "doctorly" 
}

variable "app_ec2" {
  description = "App EC2"
  default     = "app_ec2" 
}

variable "local_cidr_blocks" {
  description = "Local CIDR Block for EC2 Access"
}

variable "vpc_cidr_block" {
  description = "VPC subnet"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_block_alpha" {
  description = "Public Subnet"
  default     = "10.1.1.0/24"
}

variable "public_subnet_cidr_block_bravo" {
  description = "Public Subnet"
  default     = "10.1.2.0/24"
}

variable "private_subnet_cidr_block" {
  description = "Private Subnet"
  default     = "10.1.3.0/24"
}

variable "ami" {
  description = "EC2 Instance AMI"
  default = "ami-01cae1550c0adea9c"
}

variable "instance_type" {
  description = "EC2 instance type"
  default = "t2.micro"
}

variable "key_name" {
  description = "SSH key for EC2 instance."
}