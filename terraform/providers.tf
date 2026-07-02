provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "Terraform AWS CI/CD Pipeline"
      Environment = "Learning"
      ManagedBy   = "Terraform"
      Owner       = "Fadila Yiddana"
    }
  }
}