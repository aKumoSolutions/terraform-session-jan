terraform {
    backend "s3" {
        bucket = "terraform-session-jan-backend"
        key = "session-4/terraform.tfstate"
        region = "us-west-2"
    }
}