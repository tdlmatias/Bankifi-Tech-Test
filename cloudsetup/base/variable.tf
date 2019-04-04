variable "access_key" {
  description  = "The AWS access Key" 
}

variable "secret_key" {
  description  = "The AWS secret key"
}

variable "region" {
  type         = "string"
  description  = "The AWS Region"
  default      = "eu-west-1"
}

variable "region_list"  {
  description  = "AWS availability zones"
  default      = ["eu-west-1a", "eu-west-1b"] 
}

provider "aws" {
     access_key  = "${var.access_key}"
     secret_key  = "${var.secret_key}"
     region      = "${var.region}"
}

variable "ami" {
     type = "map"
     default = {
         eu-west-1a =
         eu-west-1b = 
     }
}
