# Image(s)
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical
}

data "aws_ami" "amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0.20211001.1-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["amazon"] # Canonical
}

# Instance 1
resource "aws_network_interface" "CN_EC2_1" {
  # private_ip = "10.0.1.101"
  # subnet_id = "subnet-0356a23104586dcd0"
  subnet_id   = data.aws_subnet.CN_Subnet_1.id
  security_groups = "sgr-06e52b44cf3723d01"
}

resource "aws_instance" "CN_EC2_1" {
  ami               = data.aws_ami.amazon_linux.id
  instance_type     = var.CN_EC2_Instance_Size
  availability_zone = "eu-north-1a"

  network_interface {
    network_interface_id = aws_network_interface.CN_EC2_1.id
    device_index         = 0
  }

  tags = {
    Name = var.CN_EC2_Name
  }
}