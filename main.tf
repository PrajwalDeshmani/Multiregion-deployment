module "india_server" {

  source = "./modules/ec2"

  providers = {
    aws = aws
  }

  instance_name = "india-server"
  ami           = var.india_ami
  instance_type = var.instance_type
}

module "us_server" {

  source = "./modules/ec2"

  providers = {
    aws = aws.secondary
  }

  instance_name = "us-server"
  ami           = var.us_ami
  instance_type = var.instance_type
}