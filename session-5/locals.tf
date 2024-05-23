// Naming Convention: Naming Standard

# 1. Provider name: aws, azure, google
# 2. Region: use1, usw1, usw2
# 3. Environment: dev, qa, stage, prod 
# 4. Project Name: batman, tom, jerry
# 5. Application Tier: frontend, backend, db
# 6. Resource Type: ec2, s3, alb, asg, sg, rds

# Example: provider_name-region-env-project_name-applicatio_tier-resource_type

# RDS Instance:
# aws-usw2-dev-tom-db-rds

# S3 Bucket:
# aws-usw2-dev-tom-backend-s3

# EC2:
# aws-usw2-dev-tom-frontend-ec2

// Tagging Standard: Common Tags

# 1. Environment: dev, qa, stage, prod
# 2. Project Name: batman, tom, jerry
# 3. Application Tier: frontend, backend, db
# 4. Team: cloud, devops, development
# 5. Owner: kris
# 6. Managed_By: cloudformation, terraform, python, manual
# 7. Lead: guliza


locals {
  name = "aws-${var.region}-${var.env}-${var.project}-${var.tier}-rtype"

  common_tags = {
    Environment = var.env
    Project     = var.project
    Team        = var.team
    Owner       = var.owner
    Managed_By  = var.managed_by
    Tier        = var.tier
  }
}