terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }


  backend "s3" {
    bucket         = "remote-backend-bucket01"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "statefile_locking_table"
  }

}
