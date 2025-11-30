variable "aws_region" {
  type        = string
  default     = "us-west-2"
  description = "AWS region"
}

variable "project_name" {
  type        = string
  default     = "aws-multitier-homelab"
  description = "Project name used for tagging"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.10.0.0/16"
  description = "VPC CIDR block"
}

variable "public_subnets" {
  type        = list(string)
  default     = ["10.10.1.0/24", "10.10.2.0/24"]
}

variable "private_subnets" {
  type        = list(string)
  default     = ["10.10.11.0/24", "10.10.12.0/24"]
}

variable "allowed_http_cidr" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
  description = "CIDR blocks allowed to hit ALB HTTP"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
}

variable "asg_desired_capacity" {
  type        = number
  default     = 2
}

variable "tailscale_auth_key" {
  type        = string
  description = "Tailscale auth key (ephemeral/reusable) used by EC2 instances to join the tailnet"
  sensitive   = true
}
