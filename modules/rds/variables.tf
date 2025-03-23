# modules/rds/variables.tf
variable "vpc_id" {
  type = string
}
variable "subnet_ids" {
  type = list(string)
}
variable "vpc_cidr" {
  type = string
}
variable "db_instance_class" {
  type = string
}
variable "db_username" {
  type = string
}
variable "db_password" {
  type = string
}
variable "project_name" {
  type = string
}