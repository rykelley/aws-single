output "alb_dns_name" {
  value       = module.webserver_cluster.alb_dns_name
  description = "the DNS name of the load balancer"
}
