output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.sample_ec2.*.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.sample_ec2.*.public_ip
}

output "instance_tags" {
  description = "Tags of the EC2 instance"
  value       = element(aws_instance.sample_ec2.*.tags, 0)
}