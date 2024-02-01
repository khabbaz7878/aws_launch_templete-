module "private_sg" {
  source = "./modules/security_group"
  name = "private-sg"
  description = "Private Security Group"
  vpc_id = var.vpc_id
  ingress_rules = [
    {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["10.0.0.0/8"]
    }
  ]
  egress_rules = [
    {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}
