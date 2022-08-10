terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.25.0"
    }
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
