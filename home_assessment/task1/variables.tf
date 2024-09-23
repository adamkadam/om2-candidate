variable "aws_region" {
  default = "us-east-1"
}

variable "ec2_properties" {
  default = {
    ami_hash     = "ami-0888db1202897905c"
    instance     = "t2.micro"
    key_name     = "windows-machine-key-pair"
    tag          = "kadam-win"
    ebs_vol_size = 30
    ebs_vol_type = "gp2"
  }
}