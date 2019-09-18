variable "alb_name" {
  description = "The name of the ALB"
  type        = string
}

variable "alb_security_group_name" {
  description = "The name of the security group for the ALB"
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

variable "region" {
  description = "Current working region"
  type        = string
}

variable "server_text" {
  description = "the text the web server should return"
  default     = "Hello, World"
  type        = string
}
variable "environment" {
  description = "Name of the Enviroment we are deploying too"
  type        = ""
}
