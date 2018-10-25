resource "aws_subnet" "subnet1" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "10.0.0.0/25"
  availability_zone = "us-east-1a"

  tags {
    Name  = "subnet1"
    Owner = "Manjesh"
    Zone  = "us-east-1a"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "10.0.0.128/25"
  availability_zone = "us-east-1b"

  tags {
    Name  = "subnet2"
    Owner = "Manjesh"
    Zone  = "us-east-1b"
  }
}
