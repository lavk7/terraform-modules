provider "aws" {
  region = "ap-southeast-1"
}

module "kafka" {
  source = "kafka/tf"
  platform = "ubuntu-14.04"
  version  = "v0.10.0.1"
  keypair = "general-keypair" 
  count = "1"
}
