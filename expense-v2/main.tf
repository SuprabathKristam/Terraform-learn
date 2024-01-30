resource "aws_instance" "frontend" {       # here frontend local_label given by us
  ami                    = data.aws_ami.centos8.image_id # We are calling it from data.tf
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "frontend-dev"
  }
}

resource "aws_route53_record" "frontend" { # frontend is local_label given by us
  zone_id = var.zone_id
  name    = "frontend-dev"         #record name
  type    = "A"
  ttl     = 30                     #time to live
  records = [aws_instance.frontend.public_ip] # here we are reffering to ip address of above created frontend instance and our editor will automatically shows suggestions
}

resource "aws_instance" "backend" {       # here backend local_label given by us
  ami                    = data.aws_ami.centos8.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "backend-dev"
  }
}

resource "aws_route53_record" "backend" { # backend is local_label given by us
  zone_id = var.zone_id
  name    = "backend-dev"         #record name
  type    = "A"
  ttl     = 30                     #time to live
  records = [aws_instance.backend.public_ip] # here we are reffering to ip address of above created frontend instance and our editor will automatically shows suggestions
}


resource "aws_instance" "mysql" {       # here mysql local_label given by us
  ami                    = data.aws_ami.centos8.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "mysql-dev"
  }
}

resource "aws_route53_record" "mysql" { # mysql is local_label given by us
  zone_id = var.zone_id   #got from route53 in AWS
  name    = "mysql-dev"         #record name
  type    = "A"
  ttl     = 30                     #time to live
  records = [aws_instance.mysql.public_ip] # here we are reffering to ip address of above created frontend instance and our editor will automatically shows suggestions
}
# Key pair is optional here we can through the documentation and under stand all the arugments
# As per standards we are trying to main all = in one line and also separate blocks by empty line