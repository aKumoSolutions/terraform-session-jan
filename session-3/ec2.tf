resource "aws_instance" "web" {
  ami           = "ami-01cd4de4363ab6ee8"  // Data Type is String, Hard Coded
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.web.id ]   // Dynamic 

  tags = {
    Name = "terraform-session-instance-new"
  }
}

resource "aws_security_group" "web" {
  name        = "web"
  description = "Allow TLS inbound traffic and all outbound traffic"

  tags = {
    Name = "web"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.web.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.web.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

// How to Reference to Resource?
// In order to Reference to Resource, we use labels (first and second)

// Syntax: first_label.second_label.attribute