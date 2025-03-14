resource "aws_instance" "app_servers" {
  ami             = data.aws_ssm_parameter.instance_ami_ubuntu.value
  count           = 2
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.my_public_subnet02.id
  security_groups = [aws_security_group.app_server_sg.id]
  key_name        = var.key_name

  tags = {
    Name = "app_server"
  }

}


resource "aws_instance" "ansible_server" {
  ami             = data.aws_ssm_parameter.instance_ami_ubuntu.value
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.my_public_subnet01.id
  security_groups = [aws_security_group.ansible_server_sg.id]
  key_name        = var.key_name
  user_data       = fileexists("install_ansible.sh") ? file("install_ansible.sh") : null
  

  tags = {
    Name = "ansible_controller"
  }

    lifecycle {
    ignore_changes = [security_groups]
  }
}


 resource "aws_instance" "web_servers" {
   ami             = data.aws_ssm_parameter.instance_ami_linux.value
   instance_type   = var.instance_type
   count           = 2
   subnet_id       = aws_subnet.my_public_subnet02.id
   security_groups = [aws_security_group.web-server-sg.id]
   key_name        = var.key_name

   tags = {
     Name = "web_server"
   }

     lifecycle {
    ignore_changes = [security_groups]
  }

 }
