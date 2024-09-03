variable "aws_region" {
  description = "The AWS region to deploy resources"
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "db_name" {
  description = "Name of the database"
  default     = "myapp_db"
}

variable "db_username" {
  description = "Username for the database"
  #default     = ""    set your own password 
}

variable "db_password" {
  description = "Password for the database"
  #default     = ""    set password
}


