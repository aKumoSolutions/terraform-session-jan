terraform {
  backend "s3" {
    bucket = "terraform-session-jan-backend"
    key    = "_env_/terraform.tfstate"
    region = "us-west-2"
  }
}