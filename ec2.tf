# creating ec2 instance in public subnet 1
resource "aws_instance" "web_1" {
    ami = "ami-0df2ca8a354185e1e"
    instance_type = "t2.micro"
    key_name = "deepu"
    vpc_security_group_ids = [aws_security_group.wsg.id]
    subnet_id = aws_subnet.pub-sub-1.id
    associate_public_ip_address = true
    user_data = "${file("userdata.sh")}"

    tags = {
      Name = "web_1"
    }

}

#creating ec2 instance in 2nd public subnet 
resource "aws_instance" "web_2" {
    ami = "ami-0df2ca8a354185e1e"
    instance_type = "t2.micro"
    key_name = "deepu"
    vpc_security_group_ids = [aws_security_group.wsg.id]
    subnet_id = aws_subnet.pub-sub-2.id
    associate_public_ip_address = true
    user_data = "${file("userdata.sh")}"

    tags = {
      Name = "web_2"
    }
    
  
}