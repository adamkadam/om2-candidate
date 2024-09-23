resource "aws_instance" "my_windows_instance" {
  ami           = var.ec2_properties.ami_hash # Amazon 2022 windows server
  instance_type = var.ec2_properties.instance # Free tier eligible
  key_name      = var.ec2_properties.key_name # Created before

  tags = {
    Name : var.ec2_properties.tag
  }

  root_block_device {
    volume_size = var.ec2_properties.ebs_vol_size
    volume_type = var.ec2_properties.ebs_vol_type
  }

  security_groups = [
    aws_security_group.allow_rdp.name
  ]
}