# Variables
variable "primary_region" {
  description = "Primary AWS region for AMI creation"
  type        = string
  default     = "us-east-1"
}

variable "subnet_id" {
  description = "Subnet ID for Image Builder instances"
  type        = string
}