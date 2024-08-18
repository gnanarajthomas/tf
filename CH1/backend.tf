provider "aws" {
    region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "mycomponents-tfstate1"
    key            = "state/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "mycomponents_tf_lockid"
  }

}