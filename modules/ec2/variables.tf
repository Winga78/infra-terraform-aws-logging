terraform {
  backend "s3" {
    bucket = "mon-terraform-state-cda-1746282858"
    key    = "production/terraform.tfstate"
    region = "eu-west-3"
    encrypt = true
  }
}