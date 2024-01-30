variable "instance_type" {
  default = "t3.micro"
}

variable "vpc_security_group_ids" {
  default = ["sg-01d072d60ba28281d"]
}

variable "zone_id" {
  default = "Z0989333373BZR91I0C0P"  # Zone id we are getting from AWS
}