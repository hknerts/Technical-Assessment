# Configure AWS Credentials & Region
provider "aws" {
  region  = var.region
}

// Creates Calculator-Server-Instance Security Group  module
module "calculator-server-sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.2.0"
  name                  = var.sg_name
  description           = var.sg_description
  vpc_id                = var.vpc_id
  ingress_cidr_blocks   = var.ingress_cidr_blocks 
  ingress_rules         = ["ssh-tcp"]
  egress_rules          = ["all-all"]
}

// Creates Calculator Server Instance module
module "calculator-server-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.12.0"

  ami                           = data.aws_ami.amazon_linux.id
  associate_public_ip_address   = false
  instance_type                 = var.ec2_type
  name                          = var.ec2_name
  instance_count                = var.instance_count # number
  key_name                      = var.ssh_keyPair_name
  subnet_ids                    = var.subnet_ids
  vpc_security_group_ids        = [module.calculator-server-sg.this_security_group_id]

  root_block_device = [
    {
      volume_type = "gp2"
      volume_size = var.ec2_volume_size
    },
  ]

  ebs_block_device = [
    {

    }
  ]
}

# Create ebs Volume
resource "aws_ebs_volume" "ebs_volume" {
  count             = var.instance_count

  availability_zone = module.calculator-server-instance.availability_zone[count.index]
  size              = 100
}

# Attach ebs Volume
resource "aws_volume_attachment" "ebs_ec2_volume_attachment" {
  count         = var.instance_count

  device_name   = "/dev/sdh"
  volume_id     = aws_ebs_volume.ebs_volume[count.index].id
  instance_id   = module.calculator-server-instance.id[count.index]
}

# AMI linux for create instance
data "aws_ami" "amazon_linux" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name = "name"

    values = [
      "amzn-ami-hvm-*-x86_64-gp2",
    ]
  }

  filter {
    name = "owner-alias"

    values = [
      "amazon",
    ]
  }
}