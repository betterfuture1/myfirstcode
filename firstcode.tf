terraform {
  required_providers {
    aws{
        source = "hashcorp/aws"
        version = "4.61.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "Cadama19" {
    name = "adama19"
    path = "/"
    tag = {
        wife = "aminata"
        son = "kader"
    }
   force_destroy = true 
}
 resource "aws_iam_access_key" "Cadam19" {
    user = aws_iam_user.Cadama19.name
   
 }