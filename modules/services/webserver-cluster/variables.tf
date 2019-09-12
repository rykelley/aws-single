variable "alb_name" {
  description = "The name of the ALB"
  type        = string
}

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}

variable "alb_security_group_name" {
  description = "The name of the security group for the ALB"
  type        = string
}

variable "cluster_name" {
  description = "the name of the cluster"
  type        = string
}

variable "db_remote_state_bucket" {
  description = "Name of the DB remote state bucket for data"
  type        = string
}

variable "db_remote_state_key" {
  description = "Name of the DB remote state path"
  type        = string
}

variable "image_id" {
  description = "Name of our AMI ID"
  type        = string
}

variable "instance_type" {
  description = "Size and type of instance"
  type        = string
}

variable "min_size" {
  type = number
}

variable "max_size" {
  type = number
}

variable "region" {
  description = "Current working region"
  type        = string
}
