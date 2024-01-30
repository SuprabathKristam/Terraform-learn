resource "aws_instance" "frontend" {       # here frontend local_label given by us
  ami                    = "ami-03265a0778a880afb"  #pick this from aws ,we are picking workstation ami as we are using same for all our images
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-01d072d60ba28281d"]

  tags = {
    Name = "frontend-dev"
  }
}
resource "aws_instance" "backend" {       # here backend local_label given by us
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-01d072d60ba28281d"]

  tags = {
    Name = "backend-dev"
  }
}
resource "aws_instance" "mysql" {       # here mysql local_label given by us
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-01d072d60ba28281d"]

  tags = {
    Name = "mysql-dev"
  }
}
# Key pair is optional here we can through the documentation and under stand all the arugments
# As per standards we are trying to main all = in one line and also separate blocks by empty line