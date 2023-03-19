variable "environment" {
  description = "The name of the environment"
  type        = string
}

variable "region" {
  description = "The name of the AWS region"
  type        = string
  default     = "eu-west-1"
}