resource "aws_instance" "servers" {
  count         = 3
  ami           = "ami-0b4f371983e5706b9"
  instance_type = "t3.small"

  tags = {
    Name = "Ecom-${count.index == 0 ? "Dev" : count.index == 1 ? "Stage" : "Prod"}"
  }
}