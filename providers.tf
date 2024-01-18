variable "region" {
  default = "eu-west-1"
}

#terraform {
#  backend "s3" {}
#}

provider "aws" {
  region = var.region
}
