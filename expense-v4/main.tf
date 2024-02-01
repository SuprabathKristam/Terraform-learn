resource "aws_instance" "instances" {
  for_each               = var.components
  ami                    = data.aws_ami.centos8.image_id # We are calling it from data.tf
  instance_type          = lookup(each.value, "instance_type", "t3.micro" )
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = lookup(each.value, "name", null )
  }
}

resource "aws_route53_record" "records" {
  for_each = var.components
  zone_id  = var.zone_id
  name     = lookup(each.value, "name", null )
  type     = "A"
  ttl      = 30                     #time to live
  records  = [lookup(lookup(aws_instance.instances, each.key, null ),"private_ip", null)]
  #records  = [ aws_instance.instances[each.key].private_ip ]
}

#Here first inner lookup will execute first so from instances it will take frontend first and from outer lookup it will fetch the private_ip of frontend and similarly it will happen for other instances that it will fetch from instances.instances
# We can use the below commented line also if look up is confusing both does the same from aws>isnatnces.instances we are fetching frontend ( each.key) from it we are fetching private ip

