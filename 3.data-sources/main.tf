data "aws_ami" "example" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"  # We are taking it from AWS and this will never change
  owners      = ["973714476881"] # We are taking it from AWS and this will never change
}

output "aws_id" {
  value = data.aws_ami.example.image_id
}

# So here we are using data source to fetch the ami id and we are calling that data block using output block