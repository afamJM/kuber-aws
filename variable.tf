/*
variable "vpc_id" {}

data "aws_vpc" "selected" {
    id = "${var.vpc_id}"  
}
*/
variable "vpc_cidr_block" {
    default = "10.0.0.0/16"
}

###  Subnets CIDR ###
variable "subnet_cidr_a" {
    description = "CIDR for the Public Subnet"
    default = "10.0.1.0/24"
}
variable "subnet_cidr_b" {
    description = "CIDR for the Public Subnet"
    default = "10.0.2.0/24"
}

