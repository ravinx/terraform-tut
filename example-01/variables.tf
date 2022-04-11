variable "vpc_region" {
}

variable "vpc_name" {
}

variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "vpc_subnet" {
  type = list
  default = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]
}
