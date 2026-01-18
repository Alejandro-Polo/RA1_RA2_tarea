provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "symfony" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2
  instance_type = "t2.micro"
  key_name      = aws_key_pair.ra1_key.key_name

  user_data = file("user-data.sh")

  tags = {
    Name = "RA1-RA2-Symfony"
  }
}

resource "aws_eip" "static_ip" {
  instance = aws_instance.symfony.id
}
