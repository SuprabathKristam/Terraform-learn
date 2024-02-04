resource "aws_instance" "ec2" {
  ami           = data.aws_ami.centos8.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "test"
  }
}