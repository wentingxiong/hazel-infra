terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.59.0"
    }
  }

  backend "s3" {
   bucket         = "hazel-s3-tfstate"
   key            = "state/backend/terraform.tfstate"
   region         = "eu-west-1"
   encrypt        = true
   dynamodb_table = "dynamodb-tfstate"
 }

}

provider "aws" {
  region = var.region
}