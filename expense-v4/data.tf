data "aws_ami" "centos8" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"  # We are taking it from AWS and this will never change
  owners      = ["973714476881"] # We are taking it from AWS and this will never change
}