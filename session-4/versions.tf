terraform {
    required_version = "~> 1.5.0"   // Terraform Version
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 5.49.0"      // AWS Provider Version
      }
    }
}

// ~> = Lazy Constraints