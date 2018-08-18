provider "aws" {
  region = "ap-southeast-1"
}

module "cassandra" {
  source = "cassandra"
  platform = "ubuntu-14.04"
  version  = "3.7.0"
  use_keypair = "true"
  key_name = "general-keypair" 
  count = "1"
}
