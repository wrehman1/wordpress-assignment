#EC2
resource "aws_instance" "wordpress" {
  ami                         = "ami-0971f6afca696ace6"
  instance_type               = "t3.micro"
  key_name                    = "test"
  subnet_id                   = aws_subnet.public1.id
  security_groups             = [aws_security_group.allow_ssh.id]
  associate_public_ip_address = true

  user_data                   = file("${path.module}/cloud-init.sh")
}