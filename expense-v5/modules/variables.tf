variable "components" {
  default = {
    frontend = {
      name = "frontend"
      instance_type = "t3.micro"
    }
    backend = {
      name = "backend"
      instance_type = "t3.micro"
    }
    mysql = {
      name = "mysql"
      instance_type = "t3.small"
    }
  }
}

variable "vpc_security_group_ids" {
  default = ["sg-01d072d60ba28281d"]
}

variable "zone_id" {
  default = "Z0989333373BZR91I0C0P"  # Zone id we are getting from AWS
}