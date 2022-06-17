terraform {
  required_version = ">= 0.15"
  # Intentionally empty. Will be filled by Terragrunt.
  backend "s3" {}
}

