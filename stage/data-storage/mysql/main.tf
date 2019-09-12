provider "aws" {
  region = "us-east-2"
}

resource "aws_db_instance" "example" {
  identifier_prefix = "customer-mysql"
  engine            = "mysql"
  allocated_storage = 10
  instance_class    = "db.t2.micro"
  name              = "pims"
  username          = "admin"

  password            = "password1234" #data.aws_secretsmanager_secret_version.db_password.secret_string
  skip_final_snapshot = true
# storage_encrypted = true  
}

#data "aws_secretsmanager_secret_version" "db_password" {
#  secret_id = "mysql-master-password-stage"
#}
