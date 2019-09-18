provider "aws" {
  region = "us-east-2"
}


module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"


  region                  = "us-east-2"
  cluster_name            = "webserver-sandbox"
  db_remote_state_bucket  = "ryans-tfstate"
  db_remote_state_key     = "stage/data-storage/mysql/terraform.tfstate"
  alb_name                = "customers-sandbox-alb"
  alb_security_group_name = "customers-alb-sec-group"
  image_id                = "ami-05c1fa8df71875112"
  instance_type           = "t2.micro"
  min_size                = 2
  max_size                = 4
  enable_autoscaling      = false
  server_text             = "New server text"

  custom_tags = {
    Owner      = "Hosting"
    DepolyedBy = "terraform"
  }
}
