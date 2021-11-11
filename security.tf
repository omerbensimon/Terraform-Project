# resource "aws_security_group" "lb_sg" {
#   description = "controls access to the application ELB"
 
#   vpc_id = "${aws_vpc.sys-vpc.id}"
#   name   = "sys-web-ELB"
 
#   ingress {
#     protocol    = "tcp"
#     from_port   = 80
#     to_port     = 80
#     cidr_blocks = ["0.0.0.0/0"]
#   }
 
#   ingress {
#     protocol    = "tcp"
#     from_port   = 443
#     to_port     = 443
#     cidr_blocks = ["0.0.0.0/0"]
#   }
 
#   egress {
#     from_port = 0
#     to_port   = 0
#     protocol  = "-1"
 
#     cidr_blocks = [
#       "0.0.0.0/0",
#     ]
#   }
# }
 
# resource "aws_security_group" "instance_sg" {
#   description = "controls direct access to application instances"
#   vpc_id      = "${aws_vpc.vpc.id}"
#   name        = "application-instances-sg"
 
#   ingress {
#     protocol    = "tcp"
#     from_port   = 32768
#     to_port     = 65535
#     description = "Access from ALB"
 
#     security_groups = [
#       "${aws_security_group.lb_sg.id}",
#     ]
#   }
 
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

resource "aws_security_group" "webservers" {
  name        = "allow_http"
  description = "Allow http inbound traffic"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1" // no protocol 
    cidr_blocks     = ["0.0.0.0/0"]
  }
}

# # Create a new security group that allows inbound http requests
# resource "aws_security_group" "allow_inbound_http" {
#   name        = "allow-inbound-http"
#   description = "Allow inbound HTTP traffic"
#   vpc_id      = aws_vpc.vpc.id

#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

# Create a new security group that allows outbound traffic
# resource "aws_security_group" "allow_outbound_traffic" {
#   name        = "allow-outbound-traffic"
#   description = "Allow all outbound traffic"
#   vpc_id      = aws_vpc.vpc.id

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }