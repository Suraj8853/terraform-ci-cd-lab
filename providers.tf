terraform {
  
  required_providers {
    aws = {
        version = "hashicorp/aws"
        source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "terraform-state-suraj"
    key = "terraform-ci-cd-lab/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
    dynamodb_table = "terraform-state-lock"
  }



}

provider "aws" {
  region = "ap-south-1"
}