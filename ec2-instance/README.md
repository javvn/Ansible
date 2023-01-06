# ec2-instance

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~>1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~>4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.48.0 |
| <a name="provider_local"></a> [local](#provider\_local) | 2.2.3 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_sg__ssh"></a> [sg\_\_ssh](#module\_sg\_\_ssh) | tedilabs/network/aws//modules/security-group | 0.24.0 |

## Resources

| Name | Type |
|------|------|
| [aws_instance.amazon](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_instance.ubuntu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [local_file.foo](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [aws_ami.amazon](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_ami.ubuntu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [terraform_remote_state.this](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_config_file"></a> [config\_file](#input\_config\_file) | The path of configuration YAML file. | `string` | `"./config.yaml"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_amazon_instance"></a> [amazon\_instance](#output\_amazon\_instance) | n/a |
| <a name="output_config"></a> [config](#output\_config) | n/a |
| <a name="output_remote_state_network"></a> [remote\_state\_network](#output\_remote\_state\_network) | n/a |
| <a name="output_ubuntu_instance"></a> [ubuntu\_instance](#output\_ubuntu\_instance) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
