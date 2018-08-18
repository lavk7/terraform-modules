variable "amis" {
  type = "map"


  default = {
      ubuntu-14.04_v0.10.1.1 = "ami-4ecd642d"
      ubuntu-14.04_v0.10.1.0 = "ami-cedb7cad"
  }
}

