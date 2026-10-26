resource "aws_instance" "myfirstinstance" {
  ami           = ami-052b3645c2c811821
  instance_type = "t2.micro"
  key_name      = "Terra-key"
  subnet_id     = "subnet-03f8297fae3bcb53c"
  tags = {
    env = var.enviornment
  }
}
