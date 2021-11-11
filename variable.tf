# VPC Variables
variable "region" {
  default     = "eu-west-1"
  description = "AWS Region"
  type        = string
}

variable "vpc-cidr" {
  default     = "10.0.0.0/16"
  description = "VPC CIDR Block"
  type        = string
}

variable "public-subnet-1-cidr" {
  default     = "10.0.0.0/24"
  description = "Public Subnet 1 CIDR Block"
  type        = string
}

variable "private-subnet-1-cidr" {
  default     = "10.0.1.0/24"
  description = "Private Subnet 1 CIDR Block"
  type        = string
}

variable "instance_type" {
  default     = "t2.micro"
  description = "AWS instance type"
}

variable "webservers_ami" {
  default = "ami-0ed961fa828560210"
}