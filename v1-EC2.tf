resource "aws_instance" "fwd-payment-node" {
  instance_type   = "t2.micro"
  ami             = "ami-05548f9cecf47b442"
  key_name        = "demo-KP"
  security_groups = ["fwd-payment-SG-node-1"]
  tags = {
    Name = "fwd-payment-node"
  }
}

resource "aws_security_group" "fwd-payment-SG-node-1" {
  name = "fwd-payment-SG-node-1"

  ingress {
    description = "Fot SSH over from my IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "fwd-payment-SG-node-1"
  }
}
