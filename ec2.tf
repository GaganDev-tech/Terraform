resource "aws_instance" "ec2-instances" {
tags = {
name = "ec2G"
}
instance_type ="t2.micro"
ami = "ami-0e2c8caa4b6378d8c"
key_name = "newkube"
}

output "Ipaddress" {
value = aws_instance.ec2-instances.public_ip
}
