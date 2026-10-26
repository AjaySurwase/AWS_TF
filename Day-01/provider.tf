provider "aws" {
  region = "us-east-2"

  assume_role {
    role_arn = "arn:aws:iam::733959199731:role/GitHubActions-Terraform-Role"
  }
}
