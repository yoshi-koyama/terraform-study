terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.25.0"
    }
  }
  backend "s3" {
    bucket  = "terraform-raisetech-study-tfstate"
    key     = "terraform.tfstate"
    region  = "ap-northeast-1"
    profile = "saml"
  }
}
provider "aws" {
  region = "ap-northeast-1"
  default_tags {
    tags = {
      Env = "develelop"
      Purpose = "terraformstudy"
      Author = "koyama"
    }
  }
}

# resource "aws_s3_bucket" "terraform_state" {
#   bucket = "terraform-raisetech-study-tfstate"
#   versioning {
#     enabled = true
#   }
# }
