module "KungFu-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "KungFu-instance"

  ami                         = "ami-0ecef6c513cc4a81c"
  instance_type               = "c6g.medium"
  key_name                    = "INFRA-922"
  monitoring                  = false
  vpc_security_group_ids      = ["sg-0cafb477fa3527086"]
  subnet_id                   = "subnet-f29b40be"
  associate_public_ip_address = true

  tags = {
    Terraform   = "true"
    Environment = "developers servers"
  }
}

module "KungFu2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "KungFu2-instance"

  ami                         = "ami-0ecef6c513cc4a81c"
  instance_type               = "c6g.medium"
  key_name                    = "INFRA-922"
  monitoring                  = false
  vpc_security_group_ids      = ["sg-0cafb477fa3527086"]
  subnet_id                   = "subnet-f29b40be"
  associate_public_ip_address = true

  tags = {
    Terraform   = "true"
    Environment = "developers servers"
  }
}

#
#resource "aws_volume_attachment" "this" {
#  device_name = "/dev/sdh"
#  volume_id   = aws_ebs_volume.this.id
#  instance_id = module.ec2_instance.id
#}

#resource "aws_ebs_volume" "this" {
#  availability_zone = "eu-central-1c"
#  size              = 200
#  type              = "gp3"
#
#  tags = {
#    Terraform   = "true"
#    Environment = "developers servers"
#  }
#}