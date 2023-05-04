terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.65.0"

    }
  }
}

provider "aws" {
  profile    = "default"
  region     = "ap-south-1"
  access_key = "AKIAVMQJROITQWSD727D"
  secret_key = "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"

}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         