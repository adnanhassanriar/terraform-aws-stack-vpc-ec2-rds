# variables.tf
variable "region" {
  default = "us-east-1"
}
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}
variable "private_subnet1_cidr" {
  default = "10.0.2.0/24"
}
variable "private_subnet2_cidr" {
  default = "10.0.3.0/24"
}
variable "ami_id" {
  default = "ami-0c55b159cbfafe1f0" 
}
variable "instance_type" {
  default = "t2.micro"
}
variable "db_instance_class" {
  default = "db.t3.micro"
}
variable "db_username" {
  default = "admin"
}
variable "db_password" {
  default = "password123" #lookup-Secret-Manager
}
variable "project_name" {
  default = "project1"
}