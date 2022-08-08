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
  subnet_id   = aws_subnet.CN_Subnet_1.id
  private_ips = ["10.0.1.101"]
  # subnet_id   = "subnet-0f453cad6e710870b"
}

resource "aws_instance" "CN_EC2_1" {
  ami                  = data.aws_ami.amazon_linux.id
  instance_type        = "t3.micro"
  availability_zone    = "eu-north-1a"
  # iam_instance_profile = "cn_iam_role"

  network_interface {
    network_interface_id = aws_network_interface.CN_EC2_1.id
    device_index         = 0
  }

  tags = {
    Name = "CN_EC2_1"
  }
}

# Instance 2
# resource "aws_network_interface" "CN_EC2_2" {
#   # subnet_id   = aws_subnet.CN_Subnet_2.id
#   private_ips = ["10.0.2.102"]
#   subnet_id   = "subnet-08d057327d010cebd"
# }

# resource "aws_instance" "CN_EC2_2" {
#   ami                  = data.aws_ami.amazon_linux.id
#   instance_type        = "t3.micro"
#   availability_zone    = "eu-north-1b"
#   # iam_instance_profile = "cn_iam_role"

#   network_interface {
#     network_interface_id = aws_network_interface.CN_EC2_2.id
#     device_index         = 0
#   }

#   tags = {
#     Name = "CN_EC2_2"
#   }
# }
