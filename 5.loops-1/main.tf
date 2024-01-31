resource "null_resource" "test" {
  count = 10
}
# By giving count resource will become a list

output "test" {
  value = null_resource.test.*.id # as it is a list and not a straight resource we are going to access all the values by using *
}
#Here we are creating a null resource and asking it to run 10 times and we know that null resource does nothing but here it runs times

/*
resource "aws_instance" "test" { # here frontend local_label given by us
  count                  = 3
  ami                    = "ami-0f3c7d07486cad139"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-01d072d60ba28281d"]

  tags = {
    Name = "test-${count.index}" #This will provide numbers like test-1 ,test-2, test-3
  }
}*/

variable "components" {
  default = ["frontend","backend","mysql"]
}

resource "aws_instance" "test" {
  count                  = length(var.components)
  ami                    = "ami-0f3c7d07486cad139"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-01d072d60ba28281d"]

  tags = {
    Name = element(var.components, count.index ) #This will pick the index values of components variables (frontend,backend,mysql)
  }