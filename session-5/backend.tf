terraform {
  backend "s3" {
    bucket = "terraform-session-jan-backend"
    key    = "session-5/terraform.tfstate"
    region = "us-west-2"
  }
}