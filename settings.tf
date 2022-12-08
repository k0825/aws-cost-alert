terraform {
  required_version = " ~> v1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.40.0"
    }
  }

  backend "s3" {
    bucket                  = "ikari-tfstate"
    region                  = "ap-northeast-1"
    key                     = "cost_alert/terraform.tfstate"
    shared_credentials_file = "~/.aws/credentials"
    profile                 = "ikari"
  }
}

provider "aws" {
  region  = "ap-northeast-1"
  profile = "ikari"
}
