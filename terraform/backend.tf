terraform {
  backend "s3" {
    bucket       = "starttech-tfstate-497149484656"
    key          = "starttech/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}
