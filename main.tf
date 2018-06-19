
provider "aws" {
  region = "eu-west-1"
}


terraform {
  backend "s3" {
    bucket = "kube-terraform-state"
    key    = "kube-terraform-state/terraform.tfstate"
    region = "eu-west-1"
  }
}

/*
resource "aws_s3_bucket" "b" {
    bucket = "kube-terraform-state"
    acl    = "private"
}
*/

# VPC
resource "aws_vpc" "main" {
    cidr_block = "${var.vpc_cidr_block}"
    enable_dns_support = true
}

# Subnet
resource "aws_subnet" "subnet_a" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "${var.subnet_cidr_a}"
}

resource "aws_subnet" "subnet_b" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "${var.subnet_cidr_b}"
}

