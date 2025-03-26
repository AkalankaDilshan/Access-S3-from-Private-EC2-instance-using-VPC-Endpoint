variable "vpc_id" {
  description = "main vpc id"
  type        = string
}

variable "security_group_name" {
  description = "name for web sg"
  type        = string
}

variable "source_security_group_id" {
  description = "source_security_group_id"
  type        = string
}
