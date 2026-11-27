output "instance_id" {
  value = aws_instance.my_ec2.id
}

output "public_ip" {
  value = aws_instance.my_ec2.public_ip
}

output "instance_type" {
  value = aws_instance.my_ec2.instance_type
}