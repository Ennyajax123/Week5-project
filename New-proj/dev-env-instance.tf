module "create-me dev-env" {
  source    = "./ec2-module/"
  node_name = var.dev-env_name
  sg_name   = var.dev-env-sg-name
  ingress_port_1 = var.dev-env-port-1
  ingress_port_2 = var.dev-env-port-2
}