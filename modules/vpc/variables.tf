variable "vpc_name" {
  description = "name for vpc"
  type        = string
}

variable "cidr_block" {
  description = "CIDR address for vpc"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "CIDR for public subnet"
  type        = string
}

variable "private_subnet_cidrs" {
  description = "CIDR for private subnet"
  type        = string
}
