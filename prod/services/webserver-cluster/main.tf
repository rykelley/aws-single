provider "aws" {
  region = var.region

}


module "webserver-cluster" {
  source = "../../../modules/services/webserver-cluster"
}

resource "aws_autoscaling_schedule" "scale_out_during_busines_hours" {
  scheduled_action_name = "scale_out_during_busines_hours"
  min_size              = 2
  max_size              = 10
  desired_capacity      = 10
  recurrence            = "0 9 * * *"

  autoscaling_group_name = module.webserver_cluster.asg_name
}

resource "aws_autoscaling_schedule" "scale_in_at_night" {
  scheduled_action_name = "scale_in_at_night"
  min_size              = 2
  max_size              = 10
  desired_capacity      = 2
  recurrence            = "0 17 * * *"

  autoscaling_group_name = module.webserver_cluster.asg_name

}



region                  = "us-east-2"
cluster_name            = "webserver-prod"
db_remote_state_bucket  = "ryans-tfstate"
db_remote_state_key     = "prod/data-storage/mysql/terraform.tfstate"
alb_name                = "customers-prod-alb"
alb_security_group_name = "customers-alb-sec-group"
image_id                = "ami-05c1fa8df71875112"
instance_type           = "t2.medium"
min_size                = 2
max_size                = 4
