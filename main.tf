provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-005c06c6de69aee84"
  instance_type = "t2.micro"
  count = 2
  
 tags = {
   Name = "terraform-example"
   CostCenter = "Facilities"
  }
}

