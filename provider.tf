terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket         	   = "statebucket-website"
    key              	 = "terraform.tfstate"
    region         	   = "eu-north-1"
    encrypt        	   = true
    dynamodb_table     = "state-lock"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-north-1"
}