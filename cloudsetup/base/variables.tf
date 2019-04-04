variable "aws_region" {
  description = "AWS region on which we will setup the swarm cluster"
  default     = "eu-west-1"
}

variable "ami" {
  description = "Amazon Linux AMI"
  default     = "ami-01f5fbceb7a9fa4d0"
}

variable "instance_type" {
  description = "Instance type"
  default     = "t2.micro"
}

variable "key_path" {
  description = "SSH Public Key path"
  default     = "~/.ssh/aws_id_rsa.pub"
}

variable "bootstrap_path" {
  description = "Script to install Docker Engine"
  default     = "get_installDocker.sh"
}
