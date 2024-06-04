terraform {
  backend "s3" {
    bucket = "terraform-session-jan-backend"
    key    = "terraform.tfstate"
    region = "us-west-2"
    workspace_key_prefix = "workspaces"
  }
}

# Currently: default
# Backend File Path: workspaces/terraform.tfstate

# New: dev
# Backend File Path: workspaces/dev/terraform.tfstate

# New: qa
# Backend File Path: workspaces/qa/terraform.tfstate

# New: stage
# Backend File Path: workspaces/stage/terraform.tfstate