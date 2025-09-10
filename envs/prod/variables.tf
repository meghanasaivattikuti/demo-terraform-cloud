variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-weseastt-1"
}

variable "ami_id" {
  description = "AMI to use for the EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.large"
}

variable "key_name" {
  description = "SSH key name"
  type        = string
}
# force run
