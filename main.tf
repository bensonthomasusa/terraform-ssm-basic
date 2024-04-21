provider "aws" {
    region = "us-west-1"
  
}


resource "aws_ssm_parameter" "foo" {
  name  = "foo"
  type  = "String"
  value = "bar1"
  
}

data "aws_ssm_parameter" "foo" {
  name = "foo"
 
}


output "gotname" {
  value = nonsensitive(data.aws_ssm_parameter.foo.value)
  sensitive = false
}


