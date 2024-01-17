## create ec2 instance
resource "aws_instance" "ec2_ins_farhan" {

  ami                         = "ami-0905a3c97561e0b69"
  instance_type               = "t2.micro"
#  vpc_security_group_ids      =  [aws_security_group.aws_sg.id]
  associate_public_ip_address = true
  key_name                    = "farhan_public_key1" # your key here

  tags = {
    Name = "Farhan's terraform instance"
    Environment= "dev"
    Owner = "Farhan Azimi"
  }
}
## create security group
#resource "aws_security_group" "aws_sg" {
#  name = "security group from terraform by farhan"


 # ingress {
 #   description = "SSH from the internet"
 #   from_port   = 22
 #   to_port     = 22
 #   protocol    = "tcp"
 #   cidr_blocks = ["0.0.0.0/0"]
 # }

#  ingress {
#   description = "80 from the internet"
#    from_port   = 80
#    to_port     = 80
#    protocol    = "tcp"
#    cidr_blocks = ["0.0.0.0/0"]
#  }

 # egress {
 #   from_port   = 0
 #   to_port     = 0
 #   protocol    = "-1"
 #   cidr_blocks = ["0.0.0.0/0"]
 # }
  
} 



output "instance_ip" {
  value = aws_instance.ec2_ins_farhan.public_ip
}
