data "aws_ami" "amazon_linux_2023" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.4.*"]
  }
// Semantic Versioning:
// Major.Minor.Patch

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

data "template_file" "userdata" {
  template = file("userdata.sh")
  vars = {
    environment = var.env
  }
}


# Data Source Block: Fetch the data from Pre-existing Resource
# Syntax: data "first_label" "second_label"