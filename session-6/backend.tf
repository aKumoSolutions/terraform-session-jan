terraform {
  backend "s3" {
    bucket = "terraform-session-jan-backend"
    key    = "session-6/terraform.tfstate"
    region = "us-west-2"
  }
}