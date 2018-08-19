resource "aws_instance" "kafka" {
  count = "${var.keypair == 0 ? "${var.count}" : 0}"
	ami = "${lookup(var.amis, "${var.platform}_${var.version}")}"
	instance_type = "${var.instance_type}"

}

resource "aws_instance" "kakfa_with_keypair" {
	ami  	= "${lookup(var.amis, "${var.platform}_${var.version}")}"
	count = "${var.keypair != 0 ? "${var.count}" : 0}"
	key_name = "${var.keypair}"
	instance_type = "${var.instance_type}"
}

module "ssh-securitygrup" {
	source = "../../common/securitygroup/ssh"
}
