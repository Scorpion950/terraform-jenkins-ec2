resource "aws_instance" "my_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "My-Terraform-Instance"
  }

  provisioner "local-exec" {
    command = "echo Public IP: ${self.public_ip} > IP.txt && echo Private IP: ${self.private_ip} >> IP.txt"
  }
}