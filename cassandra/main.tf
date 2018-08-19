resource "aws_instance" "cassandra" {
	count = "${var.use_keypair == false ? "${var.count}" : 0}"
  ami = "${lookup(var.amis,"${var.platform}_${var.version}")}"
  instance_type = "${var.instance_type}"
}
resource "aws_instance" "cassandra_with_keypair" {
	count = "${var.use_keypair == true ? "${var.count}" : 0}"
  ami = "${lookup(var.amis,"${var.platform}_${var.version}")}"
  instance_type = "${var.instance_type}"
	key_name = "${var.key_name}"
	vpc_security_group_ids = ["${module.ssh_security_group.id}"]
}

module "ssh_security_group" {
  source = "../common/securitygroup/ssh"
}
