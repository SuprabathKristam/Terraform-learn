resource "aws_instance" "test" {
  ami           = var.ami
  instance_type = var.instance_type == null ? "t3.micro" : var.instance_type
}

#So here for instance_type we are using condition where we will decide its vales if condition is true then take t3.micro as instance type if not choose instance_type vale as default so syntax is like
#conition ? "true_val : "false_val"

variable "instance_type" {
  default = null
}

variable "ami" {
  default = "ami-0f3c7d07486cad139"
}