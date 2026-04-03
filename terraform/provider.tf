terraform {
  backend "s3" {
    bucket       = "terraform-s3-backend-lab-13-78946587364"
    key          = "terraform.tfstate"
    region       = "us-west-2"
    encrypt      = true
    use_lockfile = true
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

