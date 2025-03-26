variable "vpc_name" {
  description = "name for vpc"
  type        = string
}

variable "cidr_block" {
  description = "CIDR address for vpc"
  type        = string
}

variable "availability_zones" {
  type        = string
  description = "availability_zones list"
}

variable "public_subnet_cidrs" {
  type        = string
  description = "cidr values for public subnet"
}

variable "private_subnet_cidrs" {
  type        = string
  description = "cidr values for ptivate subnet"
}
