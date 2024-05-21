resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon_linux_2023.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.web.id ]
  user_data = data.template_file.userdata.rendered    // Get an output of the file

  tags = {
    Name = "${var.env}-instance", // dev-instance
    Name1 = format("%s-instance", var.env) // dev-instance        
    Environment = var.env
  }
}

// How to Reference to Data Sources?
// Syntax: data.first_label.second_label.attribute
// Example: data.aws_ami.amazon_linux_2023.id


// How to Reference to Resource?
// Syntax: first_label.second_label.attribute
// Example: aws_ami.amazon_linux_2023.image_id


# 0.0.1 - 0.11.9 = ${data.template_file.userdata.rendered}, ${aws_security_group.web.id}, 
# 0.12.0 - now = data.template_file.userdata.rendered, aws_security_group.web.id