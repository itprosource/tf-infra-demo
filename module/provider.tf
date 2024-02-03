terraform {
  cloud {
    organization = "athome"

    workspaces {
      name = "tf-aws-demo"
    }
  }
}