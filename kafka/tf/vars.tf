variable "amis" {
  type = "map"


  default = {
      ubuntu-14.04_v0.10.1.1 = "ami-09ae3f28d1e0ca08a"
      ubuntu-14.04_v0.10.1.0 = "ami-09ae3f28d1e0ca08a"
  }
}

variable "platform" {
  default = "ubuntu-14.04"
}

variable "version" {
  default = "v0.10.1.1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "keypair" {
  default = 0
}

variable "count" {
  default = 1
}
