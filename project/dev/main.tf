module "ec2" {
############### Module Arguments ####################
  source = "../../modules/ec2"  // Required Argument, where your specify the location of Child Module
//  version = "" // Optional Argument, where you specify the version of your Child Module

############### Input Variables that are required for the Child Module ###################
  env = "dev"
  ami = "ami-01cd4de4363ab6ee8"
  instance_type = "t2.micro"
  sg = [ module.sg.security_group_id ]
}

module "sg" {
  source = "../../modules/sg"

  env = "dev"
  ports = [ "22", "80", "443" ]
}

# How to Reference to Module?

# Syntax: module.module_name.output_name