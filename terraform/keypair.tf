resource "aws_key_pair" "ra1_key" {
  key_name   = "ra1-key"
  public_key = file("${path.module}/ra1-key.pub")
}
