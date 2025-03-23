# modules/vpc/variables.tf
variable "vpc_cidr" {
  type = string
}
variable "public_subnet_cidr" {
  type = string
}
variable "private_subnet1_cidr" {
  type = string
}
variable "private_subnet2_cidr" {
  type = string
}
variable "region" {
  type = string
}
variable "project_name" {
  type = string
}

