terraform {
  cloud {
    organization = "athome"

    workspaces {
      name = "tf-aws-demo"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}