# terraform-aws-stack-vpc-ec2-rds
terraform-vpc-ec2-rds
Terraform junk for AWS. Makes VPC with 1 public subnet, 2 private ones. Throws EC2 and RDS in private subnets.

#What’s Here
VPC thing: 1 public, 2 private subnets.
EC2 thing: Server in private subnet.
RDS thing: MySQL DB in private subnet.

#How to Run
Grab it: git clone <repo-url>
Go in: cd terraform-vpc-ec2-rds
Fix AWS login stuff.
Mess with variables.tf (AMI, region, whatever).

#Do:
terraform init
terraform plan
terraform apply

#Heads Up
Need AWS and Terraform.
EC2’s private, no internet.
RDS is MySQL, stuck in VPC.
Fix AMI ID or it won’t work.
Use a real password.

#Files
main.tf: Glues it together.
variables.tf: Change stuff here.
modules/: All the bits.

#Warning
No NAT Gateway, so private subnets can’t reach the internet.
Security groups are basic—make them stricter if you need.
