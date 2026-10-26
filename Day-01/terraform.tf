terraform {
  required_version = ">=1.16.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.0"
    }
  }

  backend "s3" {
    bucket       = "terraform-state-file-infra-bucket"
    key          = "States/terraformstate.tf"
    region       = "us-east-2"
    use_lockfile = true
    encrypt      = true
  }
}
