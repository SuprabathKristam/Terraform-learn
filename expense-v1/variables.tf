variable "ami" {
  default = "ami-0f3c7d07486cad139" #pick this from aws ,we are picking workstation ami as we are using same for all our images
}

variable "instance_type" {
  default = "t3.micro"
}

variable "vpc_security_group_ids" {
  default = ["sg-01d072d60ba28281d"]
}

variable "zone_id" {
  default = "Z0989333373BZR91I0C0P"  # Zone id we are getting from AWS
}