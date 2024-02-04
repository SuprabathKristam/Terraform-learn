module "ec2" {
  source = "./modules/ec2"
}

module "route53" {
  source = "./modules/route53"
  private_ip = module.ec2.private_ip # We are taking the private ip from outputs.tf and passing it to route53 module
}