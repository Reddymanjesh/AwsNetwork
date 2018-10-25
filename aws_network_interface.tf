resource "aws_network_interface" "test" {
  description     = "Network interface description"
  subnet_id       = "${aws_subnet.subnet1.id}"
  security_groups = ["${aws_security_group.allow_all.id}"]

  tags {
    Name = "Interfacing with instance"
  }
}
