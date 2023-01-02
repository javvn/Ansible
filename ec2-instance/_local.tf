locals {
  context = yamldecode(file(var.config_file)).context
  config  = yamldecode(templatefile(var.config_file, local.context))


  #################################
  # REMOTE - STATES
  #################################
  remote_states = {
    "network" = data.terraform_remote_state.this["network"].outputs
  }
  name                  = local.remote_states["network"].name
  vpc                   = local.remote_states["network"].vpc_id
  private_subnet_groups = local.remote_states["network"].private_subnets
  public_subnet_groups  = local.remote_states["network"].public_subnets
  common_tags           = local.remote_states["network"].tags

  #################################
  # EC2 - INSTANCE
  #################################
  default_instance_type               = "t2.micro"
  default_key_name                    = "fastcampus"
  default_associate_public_ip_address = true
}

