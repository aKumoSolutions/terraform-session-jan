resource "aws_sqs_queue" "main" {
  name = "${terraform.workspace}-sqs"
}

# How to Reference to Workspace?

# Syntax: terraform.workspace


# terraform workspace show (Show the current workspace)      
# default
# terraform workspace list (Lists all the workspaces, * means the current workspace)
# * default
# terraform workspace select (Switch)
# terraform workspace new (Create a new workspace and switch)
# terraform workspace delete (Delete the workspace)