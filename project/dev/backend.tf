terraform {
  backend "s3" {
    bucket = "terraform-session-jan-backend"
    key    = "project/dev/terraform.tfstate"
    region = "us-west-2"
  }
}
