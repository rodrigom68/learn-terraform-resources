# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

provider "aws" {
  region = "us-west-1"
}

data "aws_ami" "LinuxWeb" {

  owners = ["amazon"]
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20240301"]
   }  
  
}

resource "aws_instance" "LinuxWeb" {

    ami = data.aws_ami.LinuxWeb
    instance_type = var.instance_type 
    user_data = file("init-script1.sh") 
}

variable "instance_type" {

    type        = string
    description = "WebServerPHP" 

}

output "AMI" {

    value = data.aws_ami.LinuxWeb
  
}