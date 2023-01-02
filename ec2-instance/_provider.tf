provider "aws" {
  region = data.terraform_remote_state.this["network"].outputs.region
}