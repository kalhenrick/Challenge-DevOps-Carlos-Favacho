variable "aws_region" {
    default = "us-east-1"
}

variable "vpc_name" {
    default = "vpc-dev"
}

variable "cidr_vpc" {
    default = "10.18.0.0/16"
}

variable "cidr_subnet" {
    default = "10.18.1.0/24"
}

variable "cidr_subnet_private" {
    default = "10.18.2.0/24"
}

variable "subnet_name" {
    default = "public"
}
variable "subnet_name_private" {
    default = "private"
}

variable "subnet_az" {
    default = "us-east-1a"
}

variable "subnet_az_private" {
    default = "us-east-1b"
}

variable "ig_name" {
    default = "IG-dev"
}

variable "acl_name" {
    default = "dev"
}

variable "public_acl_inbound_tcp_ports" {
  default     = ["22", "80", "443", "3306"]
}

variable "sg_name" {
    default = "dev"
}

variable "nic_name" {
    default = "primary-dev"
}

variable "subnet_private_ip" {
    default = "10.18.1.10"
}

variable "instance_ami" {
    default = "ami-07fde2ae86109a2af"
}

variable "instance_type" {
    default = "t2.medium"
}

variable "instance_volume_size" {
    default = "30"
}

variable "instance_volume_type" {
    default = "gp2"
}

variable "instance_name" {
    default = "dokcer-services"
}

variable "allocated_storage" {
    default = "30"
}

variable "storage_type" {
    default = "gp2"
}

variable "max_allocated_storage" {
    default = "35"
}

variable "engine" {
    default = "mysql"
}

variable "engine_version" {
    default = "5.7.33"
}

variable "instance_class" {
    default = "db.t3.small"
}

variable "db_name" {
    default = "fuer"
}

variable "parameter_group_name" {
    default = "default.mysql5.7"
}



variable "publicly_accessible" {
    default = false
}
