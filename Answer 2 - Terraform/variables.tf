variable "region" {
  default = "eu-central-1"
}

variable "vpc_id" {
  default = "yourVpcId"
}


### SECURITY GROUP VARIABLES ###
variable "sg_name" {
  default = "Calculator_Server_SG"
}

variable "sg_description" {
  default = "this security group created by terraform for calculator server instance usage"
}

variable "ingress_cidr_blocks" {
  type = "list"
  default = ["10.0.0.0/24"]
}

### EC2 INSTANCE VARIABLES ###

variable "ec2_type" {
  default = "c5.large"
}

variable "ec2_name" {
  default = "Calculator Server Instance"
}

variable "instance_count" {
  default = 1
}

variable "ssh_keyPair_name" {}

variable "subnet_ids" {
  type = "list"
  default = ["yourSubnetId"]
}

variable "ec2_volume_size" {
  default = 20
}

