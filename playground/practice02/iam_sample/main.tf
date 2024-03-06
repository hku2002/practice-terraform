terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.39.1"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_iam_user" "developer" {
  name = "developer"
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}
