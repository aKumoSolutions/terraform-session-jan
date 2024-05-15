terraform {
    required_version = "~> 1.5.0"  // Terraform Version
    required_providers {   // Provider Version
      aws = {
        source = "hashicorp/aws"
        version = "~> 5.49.0"
      }
    }
}

// 1.5.7 = Symentic Versioning
// 1 = Major (Upgrade) = Main Changes
// 5 = Minor (Update)  = Features/Enhancements
// 7 = Patch (Patching) = Fix Vulnerabilities 


# 1.5.0 --> 1.5.x = (>=1.5.0, <1.6.0), (~> 1.5.0)
# 5.49.0 --> 5.49.x = (>=5.49.0, <5.50.0), (~> 5.49.0)

# Lazy Constraints: ~>

