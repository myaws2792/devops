
terraform {
  required_version = "1.5.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.12"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
}

# Using remote backend
terraform {
  backend "s3" {
    bucket = "mydevopakash-1"
    key    = "tfstate"
    region = "ap-south-1"
  }
}

