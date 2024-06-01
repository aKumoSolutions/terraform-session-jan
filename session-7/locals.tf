locals {
  name = "aws-${var.team}-${var.project}-${var.app}-rtype-${var.env}"
  common_tags = {
    Environment = var.env
    Team        = var.team
    Application = var.app
    Project     = var.project
    Owner       = "kris"
    Managed_By  = "Terraform"
  }
  asg_tags = merge(
   { Name = replace(local.name, "rtype", "asg") },
   local.common_tags
  )
}

# Name: aws-team-project-app-rtype-env
# Tags: Environment, Team, Application, Project, Owner, Managed By