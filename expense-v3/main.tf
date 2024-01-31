resource "aws_instance" "instances" {
  count                  = length(var.components)
  ami                    = data.aws_ami.centos8.image_id # We are calling it from data.tf
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = element(var.components, count.index )
  }
}

resource "aws_route53_record" "records" {
  count   = length(var.components)
  zone_id = var.zone_id
  name    = "${element(var.components,count.index)}-dev"
  type    = "A"
  ttl     = 30                     #time to live
  records = [element(aws_instance.instances.*.private_ip, count.index)] #The moment you call count it will become a list
}

#Here above for records column we are fetching the details for all private ip's and iterating each through index by count function


