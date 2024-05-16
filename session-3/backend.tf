terraform {
    backend "s3" {
        bucket = "terraform-session-jan-backend"
        key = "session-3/terraform.tfstate"      // Path to your Remote Backend File (terraform.tfstate)
        region = "us-west-2"
    }
}