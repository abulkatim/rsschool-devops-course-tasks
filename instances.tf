provider "aws" {
  region = var.region
}

resource "aws_instance" "bastion" {
  ami                    = data.aws_ssm_parameter.debian12.value
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_1.id
  vpc_security_group_ids = [aws_security_group.bastion.id]
  associate_public_ip_address = true
  tags = { Name = "Bastion" }
}

resource "aws_instance" "instance_1_ngw" {
  ami                    = data.aws_ssm_parameter.debian12.value
  instance_type          = var.instance_type
  availability_zone      = var.az1
  subnet_id              = aws_subnet.private_1.id
  tags = { Name = "instance_1_nat_gateway" }
}

resource "aws_instance" "instance_2_ngw" {
  ami                    = data.aws_ssm_parameter.debian12.value
  instance_type          = var.instance_type
  availability_zone      = var.az2
  subnet_id              = aws_subnet.private_2.id
  tags = { Name = "instance_2_nat_gateway" }
}

resource "aws_instance" "instance_1_igw" {
  ami                    = data.aws_ssm_parameter.debian12.value
  instance_type          = var.instance_type
  availability_zone      = var.az1
  subnet_id              = aws_subnet.public_1.id
  associate_public_ip_address = true
  tags = { Name = "instance_1_inet_gateway" }
}

resource "aws_instance" "instance_2_igw" {
  ami                    = data.aws_ssm_parameter.debian12.value
  instance_type          = var.instance_type
  availability_zone      = var.az2
  subnet_id              = aws_subnet.public_2.id
  associate_public_ip_address = true
  tags = { Name = "instance_2_inet_gateway" }
}