variable "access_key" {
  description = "The AWS access Key"
}

variable "secret_key" {
  description = "The AWS secret key"
}

variable "region" {
  type        = "string"
  description = "The AWS Region"
  default     = "eu-west-1"
}

variable "region_list" {
  description = "AWS availability zones"
  default     = ["eu-west-1a", "eu-west-1b"]
}

variable "ami" {
  type = "map"
  default = {
    eu-west-1  = "ami-01f5fbceb7a9fa4d0"
    eu-west-1a = "ami-01f5fbceb7a9fa4d0"
    eu-west-1b = "ami-01f5fbceb7a9fa4d0"
  }
}
