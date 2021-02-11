provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-005c06c6de69aee84"
  instance_type = "t2.micro"
  count = 3
  
 tags = {
   Name = "terraform-ui-driven"
   CostCenter = "Cloud Ops"
  }
}

