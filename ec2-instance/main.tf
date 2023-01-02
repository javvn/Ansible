resource "local_file" "foo" {
  content  = "foo!"
  filename = "${path.module}/foo.bar"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

data "aws_ami" "amazon" {
  most_recent = true

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }

  owners = ["amazon"]
}

resource "aws_instance" "amazon" {
  count = 2

  ami           = data.aws_ami.amazon.image_id
  instance_type = local.default_instance_type
  subnet_id     = local.public_subnet_groups[0]
  key_name      = local.default_key_name

  associate_public_ip_address = true
  vpc_security_group_ids = [
    module.sg__ssh.id,
  ]

  tags = merge(
    local.common_tags,
    {
      Name = format("%s-amazon-linux", local.name)
    }
  )
}

resource "aws_instance" "ubuntu" {
  count = 2

  ami           = data.aws_ami.ubuntu.image_id
  instance_type = local.default_instance_type
  subnet_id     = local.public_subnet_groups[0]
  key_name      = local.default_key_name

  associate_public_ip_address = local.default_associate_public_ip_address
  vpc_security_group_ids = [
    module.sg__ssh.id,
  ]

  tags = merge(
    local.common_tags,
    {
      Name = format("%s-ubuntu", local.name)
    }
  )
}