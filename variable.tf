# vpc variables

variable "vpc_cidr" {
  default = "10.0.0.0/16"
  description = "vpc cidr block"
  type = string
}

variable "public_subnet_az1_cidr" {
  default = "10.0.0.0/24"
  description = "public subnet az1 cidr block"
  type = string
}

variable "public_subnet_az2_cidr" {
  default = "10.0.1.0/24"
  description = "public subnet az2 cidr block"
  type = string
}

variable "private_app_subnet_az1_cidr" {
  default = "10.0.2.0/24"
  description = "private app subnet az1 cidr block"
  type = string
}

variable "private_app_subnet_az2_cidr" {
  default = "10.0.3.0/24"
  description = "private app subnet az2 cidr block"
  type = string
}

variable "private_data_subnet_az1_cidr" {
  default = "10.0.4.0/24"
  description = "private data subnet az1 cidr block"
  type = string
}

variable "private_data_subnet_az2_cidr" {
  default = "10.0.5.0/24"
  description = "private data subnet az2 cidr block"
  type = string
}

# security group variables

variable "ssh_location" {
  default = "0.0.0.0/0"
  description = "the ip address that can ssh into the ec2 instances"
  type = string
}

# rds variables

variable "database_snapshot_identifier" {
  default = "arn:aws:rds:us-east-1:659497191851:snapshot:snapshot-dev-rds-db"
  description = "the database snapshot arn"
  type = string
}

variable "database_instance_class" {
  default = "db.t2.micro"
  description = "the database instance type"
  type = string
}

variable "database_instance_identifier" {
  default = "dev-rds-db"
  description = "the database instance identifier"
  type = string
}

variable "multi-az-deployment" {
  default = false
  description = "create a standby db instance"
  type = bool
}

# applicatino load balancer variables

variable "ssl_certificate_arn" {
  default = "arn:aws:acm:us-east-1:659497191851:certificate/0a085fa3-cf76-4cd3-aa17-b1ceb2f04e4f"
  description = "ssl certificate arn"
  type = string
}
