terraform {
  backend "s3" {
    bucket = "ryans-tfstate"
    key    = "stage/services/webserver-cluster/terraform.tfstate"
    region = "us-east-2"

    dynamodb_table = "tf-locks"
    encrypt        = true
  }
}
