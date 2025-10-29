# Latest Ubuntu LTS (22.04/24.04) - Canonical owned
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*22.04-amd64-server-*", "ubuntu/images/hvm-ssd/ubuntu-*24.04-amd64-server-*"]
  }
}
