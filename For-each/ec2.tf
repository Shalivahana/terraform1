resource "aws_instance" "expence" {
  for_each = var.instances
    ami = "ami-09c813fb71547fc4f"
    instance_type = each.value
    vpc_security_group_ids = [aws_security_group.allow_sshh.id]
    tags = {
    Name = each.key
  }

}
resource "aws_security_group" "allow_sshh"{
    name = "allow-sshh"
    description = "Allow SSH inbound traffic and all outbound traffic"
    
     tags = {
    Name = "allow_sshh"
  }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
        ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"] #allow from everyone
        ipv6_cidr_blocks = ["::/0"]
   
    }
}

