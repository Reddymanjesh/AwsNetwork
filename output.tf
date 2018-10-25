output "vpc_id" {
  value = "${aws_vpc.main.id}"
}

output "igw_id" {
  value = "${aws_internet_gateway.gw.id}"
}

output "routetable_id" {
  value = "${aws_route_table.r.id}"
}

output "subnet1_id" {
  value = "${aws_subnet.subnet1.id}"
}

output "subnet2_id" {
  value = "${aws_subnet.subnet2.id}"
}

output "securitygroup_id" {
  value = "${aws_security_group.allow_all.id}"
}
