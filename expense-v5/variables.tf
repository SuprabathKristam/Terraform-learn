variable "components" {
  default = {
    frontend = {
      name          = "frontend"
      instance_type = "t3.micro"
    }

    mysql = {
      name          = "mysql"
      instance_type = "t3.small"
    }
    backend = {
      name = "backend"
    }
  }
}

variable "zone_id" {
  default = "Z09059901XRPHNYMGLMJ4"
}

variable "vpc_security_group_ids" {
  default = ["sg-04ce0678d07a32073"]
}