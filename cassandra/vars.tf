variable "amis" {
  type = "map"


  default = {
      ubuntu-14.04_v3.7.0 = "ami-044584a751e754a0e"
      ubuntu-14.04_v3.9.0 = "ami-044584a751e754a0e"
      ubuntu-16.04_v3.7.0 = "ami-044584a751e754a0e"
      ubuntu-16.04_v3.9.0 = "ami-044584a751e754a0e"
  }
}



variable "platform" {
  type = "string"
  default = "ubuntu-14.04"
}

variable "version" {
  type = "string"
  default = "v3.7.0"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "count" {
	default = "1"
}

variable "use_keypair" {
	default = false
}

variable "key_name" {
	description = "The keypair name"
}




