resource "aws_instance" "web" {
  count = 3
  ami           = "ami-01cd4de4363ab6ee8" 
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.web.id ]  

  tags = {
    Name = "${var.env}-instance",        
    Environment = var.env
  }
}

# count = meta argument, to create identical resources
# index = 0, 1, 2, 3, 4
# indices = plural of index (indexes)


# [ banana, apple, grape, orange ]

# banana = 0
# apple = 1
# grape = 2
# orane = 3 

# [ 1, 2 ,5 , 6 ,7 ,8, 54, 56, 76 ]
# 56 = 7
# 6 = 3
# 2 = 1
# 5 = 2



# How to Reference to Input Variable?
# Syntax: var.variable_name

# Highlight + Command + d


# Terraform Version:
# 0.0.0 - 0.11.9 = ${aws_security_group.web.id}, ${var.env}
# 0.12.0 - 1.8.5 = aws_security_group.web.id, var.env