terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.40"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.25"
    }
  }

  backend "s3" {
    bucket = "actionsprofile26"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }

  required_version = ">= 1.6.0, < 2.0.0"
}