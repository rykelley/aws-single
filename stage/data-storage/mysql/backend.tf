terraform {
  backend "s3" {
    bucket = "ryans-tfstate"
    key    = "stage/data-storage/mysql/terraform.tfstate"
    region = "us-east-2"

    dynamodb_table = "tf-locks"
    encrypt        = true
  }
}
