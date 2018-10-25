resource "aws_eip_association" "eip_assoc" {
  instance_id   = "${aws_instance.web_server.id}"
  allocation_id = "${aws_eip.example.id}"
}
