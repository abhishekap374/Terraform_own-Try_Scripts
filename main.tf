provider "aws" {
  access_key = "AKIAXIMG3OVYNNM2GCCO"
  secret_key = "PbIVdxw0AKtQwoZoGMsxmm+x9uSjiE+LTFiPnHZ4"
  region     = "us-east-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0277b52859bac6f4b"
  key_name      = "aws-keypair"
  instance_type = "t2.micro"

  tags = {
    Name = "For_Terraform_Test_Ec2_code"
  }
}

resource aws_security_group security_tera_port {
  name = "security_tera_port"

  #description = security_group_for_jenkins
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 9090
    to_port     = 9090
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "security_tera_port"
  }
}
