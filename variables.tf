variable "aws_region" {
  default     = "ap-southeast-1"
  type        = string
  description = "region name"
}

variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  type        = string
  description = "vpc network"
}

variable "subnet_cidr" {
  default     = "10.0.1.0/24"
  type        = string
  description = "subnet id"

}

variable "instance_type" {
  default     = "t2.micro"
  type        = string
  description = "instance type"

}