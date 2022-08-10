#----------------------------------------
# EC2インスタンスの作成
#----------------------------------------
resource "aws_instance" "sample_web_server" {
  ami                    = "ami-09d28faae2e9e7138" # Amazon Linux 2
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.sample_subnet.id
  vpc_security_group_ids = [aws_security_group.sample_sg.id]
  user_data              = <<EOF
#! /bin/bash
sudo yum install -y nginx
sudo systemctl status nginx
sudo systemctl start nginx
sudo systemctl enable nginx
EOF
}
