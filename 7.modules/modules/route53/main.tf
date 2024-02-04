resource "aws_route53_record" "records" {
  zone_id = "Z0989333373BZR91I0C0P"
  name    = "test"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}

variable "private_ip" {} # We are calling it from root module main.tf file where we are passing it as input to route53 module from outputs.tf and outputs.tf got the information  from ec2 instance