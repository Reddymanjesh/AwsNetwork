resource "aws_instance" "web_server" {
  count         = 1
  ami           = "ami-0ac019f4fcb7cb7e6"
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.deployer.key_name}"

  network_interface {
    network_interface_id = "${aws_network_interface.test.id}"
    device_index         = 0
  }

  user_data = "${file("${var.bootstrap_path}")}"

  //Initial attached volume change from default 8 to 11 gb
  root_block_device {
    volume_type = "gp2"
    volume_size = 9
  }

  volume_tags {
    Name = "my-instance-root"
  }

  tags {
    Name  = "webserver"
    owner = "Manjesh"
  }
}
