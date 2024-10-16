module "create-me prod-env" {
  source    = "./ec2-module/"
  node_name = var.prod-env_name
  sg_name   = var.prod-env-sg-name
  ingress_port_1 = var.prod-env-port-1
  ingress_port_2 = var.dev-env-port-2
}