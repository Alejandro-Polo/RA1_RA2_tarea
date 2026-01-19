terraform {
  backend "s3" {
    bucket  = "ra1-ra2-terraform-state-alejandropolo"
    key     = "symfony/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}