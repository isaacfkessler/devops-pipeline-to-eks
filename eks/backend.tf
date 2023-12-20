terraform {
  backend "s3" {
    bucket = "backendtfisaac0102"
    key    = "backend/terraform.tfstate"
    region = "us-east-1"
  }
}
