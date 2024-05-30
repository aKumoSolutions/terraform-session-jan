module "ec2" {
  source = "github.com/aKumoSolutions/terraform-session-jan-2024//modules/ec2?ref=v1.0.0" 

  env = "dev"
  ami = "ami-01cd4de4363ab6ee8"
  instance_type = "t2.micro"
  sg = [ module.sg.security_group_id ]
}

module "sg" {
  source = "github.com/aKumoSolutions/terraform-session-jan-2024//modules/sg?ref=v1.0.1"

  env = "dev"
  ports = [ "22", "80", "443" ]
}

# github.com = Domain Name (SCM)
# /aKumoSolutions = Github Organization
# /terraform-session-jan-2024 = Repository 
# /tree = ?
# /main = Branch Name (default)
# /modules = Directory
# /ec2 = Subdirectory