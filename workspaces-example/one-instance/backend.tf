terraform {
  backend "s3" {
    bucket = "ryans-tfstate"
    key    = "workspaces-example/terraform.tfstate"
    region = "us-east-2"

    dynamodb_table = "tf-locks"
    encrypt        = true
  }
}
