module "sg__ssh" {
  source  = "tedilabs/network/aws//modules/security-group"
  version = "0.24.0"

  name        = "${local.name}-SSH"
  description = "Security Group for SSH."
  vpc_id      = local.vpc

  ingress_rules = [
    {
      id          = "ssh"
      protocol    = "tcp"
      from_port   = 22
      to_port     = 22
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow SSH from anywhere."
    },
    {
      id          = "http"
      protocol    = "tcp"
      from_port   = 80
      to_port     = 80
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow SSH from anywhere."
    },
  ]
  egress_rules = [
    {
      id          = "all/all"
      description = "Allow to communicate to the Internet."
      protocol    = "-1"
      from_port   = 0
      to_port     = 0

      cidr_blocks = ["0.0.0.0/0"]
    },
  ]

  tags = merge(local.remote_states["network"].tags, { Name = format("%s-SSH", local.name) })
}