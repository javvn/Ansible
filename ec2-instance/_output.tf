# output "amazon_instance" {
#   value = [
#     for instance in aws_instance.amazon : {
#       public_ip   = instance.public_ip
#       public_dns  = instance.public_dns
#       private_ip  = instance.private_ip
#       private_dns = instance.private_dns
#     }
#   ]
# }

# output "ubuntu_instance" {
#   value = [
#     for instance in aws_instance.ubuntu : {
#       public_ip   = instance.public_ip
#       public_dns  = instance.public_dns
#       private_ip  = instance.private_ip
#       private_dns = instance.private_dns
#     }
#   ]
# }

# output "file_name" {
#   value = data.local_file.foo.content
# }

output "config" {
  value = local.config
}

output "remote_state_network" {
  value = {
    vpc             = local.remote_states["network"].vpc_id
    private_subnets = local.private_subnet_groups
    public_subnets  = local.public_subnet_groups
  }
}